#!/usr/bin/env python3
"""
Генератор RAL-модели CSR через DeepSeek API.

Читает схемы (csr, config, schema_defs), профиль RVA23U64,
обходит CSR YAML, фильтрует по priv_mode == M и definedBy == Sm,
группирует по базовым/счётчикам/PMP/Zihpm,
генерирует по файлу на группу.
"""

import os
import sys
import glob
import json
import yaml
import time
from collections import defaultdict
from openai import OpenAI

# --- Настройки ---
API_KEY      = os.environ.get("DEEPSEEK_API_KEY")
API_BASE     = "https://api.deepseek.com"
MODEL        = "deepseek-coder"
PROFILE_PATH = "csr_spec/profile/RVA23S64.yaml"
SCHEMA_DIR   = "csr_spec/schemas"
CSR_DIR      = "csr_spec/csr"
OUT_DIR      = "src/csr"
PROMPT_PATH  = "tools/prompts/gen_csr.md"

PRIV_MODE_FILTER = "M"
XLEN = 64                       # для фильтра h-версий
BATCH_SIZE = 10

# Группы для генерации. None = все.
GROUPS_TO_GEN = ["Sm_base"]     # начнём с базовых


# ============================================================================
# Загрузка артефактов
# ============================================================================
def load_prompt():
    with open(PROMPT_PATH) as f:
        return f.read()


def load_json(path):
    with open(path) as f:
        return json.load(f)


def load_profile():
    with open(PROFILE_PATH) as f:
        return yaml.safe_load(f)


def extract_params(profile):
    """Извлекает параметры профиля."""
    params = dict(profile.get("params", {}))
    reqs = profile.get("requirements", {}).get("param", {}).get("allOf", [])
    if isinstance(reqs, dict):
        reqs = [reqs]
    for req in reqs:
        name = req.get("name")
        if not name:
            continue
        if "equal" in req:
            params[name] = req["equal"]
        elif "includes" in req:
            val = req["includes"]
            params[name] = val[0] if isinstance(val, list) else val
    return params


# ============================================================================
# Нормализация definedBy
# ============================================================================
def extract_extensions(defined_by):
    if defined_by is None:
        return []
    if isinstance(defined_by, str):
        return [defined_by]
    if isinstance(defined_by, list):
        out = []
        for item in defined_by:
            out.extend(extract_extensions(item))
        return out
    if isinstance(defined_by, dict):
        if "extension" in defined_by:
            ext = defined_by["extension"]
            if isinstance(ext, dict):
                return [ext.get("name", "")]
            return [str(ext)]
        if "anyOf" in defined_by:
            return extract_extensions(defined_by["anyOf"])
        if "allOf" in defined_by:
            return extract_extensions(defined_by["allOf"])
        if "param" in defined_by:
            return []
        return []
    return []


# ============================================================================
# Группировка
# ============================================================================
def get_group(csr, xlen=64):
    """Определяет группу для генерации (см. parse_csr.py)."""
    name = csr["name"]

    if xlen == 64:
        if name.endswith("h") and (
            name.startswith("mhpmcounter") or
            name.startswith("mhpmevent") or
            name in ("mcycleh", "minstreth", "mstatush")
        ):
            return None

    if name.startswith("pmp"):
        return "Sm_pmp"
    if name.startswith("mhpmcounter") or name.startswith("mhpmevent"):
        return "Sm_zihpm"
    if name in ("mcycle", "mcycleh", "minstret", "minstreth", "mcountinhibit"):
        return "Sm_zicntr"

    base_m = {
        "mstatus", "misa", "medeleg", "mideleg", "mie", "mtvec",
        "mcounteren", "mscratch", "mepc", "mcause", "mtval", "mip",
        "mvendorid", "marchid", "mimpid", "mhartid", "mconfigptr",
        "mstatush", "mtinst", "mtval2",
    }
    if name in base_m:
        return "Sm_base"

    return "Sm_misc"


# ============================================================================
# Фильтрация
# ============================================================================
def profile_extensions(profile):
    mandatory = {e["name"] for e in profile.get("mandatory_extensions", [])}
    optional  = {e["name"] for e in profile.get("non_mandatory_extensions", [])}
    allow_extra = profile.get("additional_extensions", True)
    return mandatory, optional, allow_extra


def csr_in_profile(csr, mandatory, optional, allow_extra):
    exts = extract_extensions(csr.get("definedBy"))
    if not exts:
        return True
    allowed = mandatory | (optional if allow_extra else set())
    return any(e in allowed for e in exts)


# ============================================================================
# Итератор CSR
# ============================================================================
def iter_csrs(csr_dir):
    for path in glob.glob(os.path.join(csr_dir, "**", "*.yaml"), recursive=True):
        try:
            with open(path) as f:
                csr = yaml.safe_load(f)
        except Exception as e:
            print(f"WARN: {path}: {e}", file=sys.stderr)
            continue
        if not isinstance(csr, dict):
            continue
        if csr.get("kind") != "csr":
            continue
        if "address" not in csr:
            continue
        yield csr


# ============================================================================
# Вызов LLM
# ============================================================================
def call_llm(client, system_prompt, user_prompt):
    resp = client.chat.completions.create(
        model=MODEL,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user",   "content": user_prompt},
        ],
        temperature=0.0,
        max_tokens=8000,
    )
    return resp.choices[0].message.content


# ============================================================================
# Main
# ============================================================================
def main():
    if not API_KEY:
        print("ERROR: DEEPSEEK_API_KEY not set", file=sys.stderr)
        sys.exit(1)

    client = OpenAI(api_key=API_KEY, base_url=API_BASE)

    system_prompt = load_prompt()
    csr_schema    = load_json(os.path.join(SCHEMA_DIR, "csr_schema.json"))
    cfg_schema    = load_json(os.path.join(SCHEMA_DIR, "config_schema.json"))
    defs_schema   = load_json(os.path.join(SCHEMA_DIR, "schema_defs.json"))
    profile       = load_profile()

    mandatory, optional, allow_extra = profile_extensions(profile)
    params = extract_params(profile)

    print(f"Profile: {profile.get('name')}")
    print(f"  Mandatory: {len(mandatory)}")
    print(f"  Optional:  {len(optional)}")
    print(f"  Allow extra: {allow_extra}")
    print(f"  Params: {params}")

    context = (
        "## Схема CSR (csr_schema.json)\n\n"
        f"```json\n{json.dumps(csr_schema, indent=2)}\n```\n\n"
        "## Схема конфигурации (config_schema.json)\n\n"
        f"```json\n{json.dumps(cfg_schema, indent=2)}\n```\n\n"
        "## Вспомогательные определения (schema_defs.json)\n\n"
        f"```json\n{json.dumps(defs_schema, indent=2)}\n```\n\n"
        "## Профиль\n\n"
        f"```yaml\n{yaml.dump(profile, allow_unicode=True)}\n```\n\n"
        f"## Параметры профиля\n\n"
        f"- UXLEN = {params.get('UXLEN', 64)}\n"
        f"- MXLEN = {params.get('MXLEN', 64)}\n"
        f"- SXLEN = {params.get('SXLEN', 64)}\n"
    )

    # Сбор CSR по группам
    by_group = defaultdict(list)
    total = 0
    filtered = 0
    excluded_h = 0

    for csr in iter_csrs(CSR_DIR):
        total += 1
        if csr.get("priv_mode") != PRIV_MODE_FILTER:
            continue
        if not csr_in_profile(csr, mandatory, optional, allow_extra):
            continue
        exts = extract_extensions(csr.get("definedBy"))
        if "Sm" not in exts:
            continue

        group = get_group(csr, xlen=XLEN)
        if group is None:
            excluded_h += 1
            continue

        filtered += 1
        if GROUPS_TO_GEN and group not in GROUPS_TO_GEN:
            continue
        by_group[group].append(csr)

    print(f"\nTotal scanned: {total}")
    print(f"After filters (Sm, M): {filtered}")
    print(f"Excluded h-versions: {excluded_h}")
    print(f"Groups: {len(by_group)}")

    os.makedirs(OUT_DIR, exist_ok=True)

    for group, csrs in sorted(by_group.items()):
        print(f"\n=== {group} ({len(csrs)} CSRs) ===")
        out_path = os.path.join(OUT_DIR, f"csr_{group.lower()}_extension.svh")

        all_classes = []
        for i in range(0, len(csrs), BATCH_SIZE):
            batch = csrs[i:i+BATCH_SIZE]
            print(f"  Batch {i//BATCH_SIZE + 1} ({len(batch)} CSRs)")

            user_prompt = context + "\n## CSR для генерации\n\n"
            for csr in batch:
                user_prompt += f"```yaml\n{yaml.dump(csr, allow_unicode=True)}\n```\n\n"
            user_prompt += (
                "Сгенерируй SystemVerilog-класс для каждого CSR выше, "
                "разделяя пустой строкой. Никаких пояснений."
            )

            sv_code = call_llm(client, system_prompt, user_prompt)
            all_classes.append(sv_code)

        with open(out_path, "w") as f:
            f.write("//------------------------------------------------------------------------------\n")
            f.write(f"// csr_{group.lower()}_extension.svh\n")
            f.write("//\n")
            f.write("// АВТОГЕНЕРАЦИЯ через DeepSeek API. Не редактировать вручную.\n")
            f.write(f"// Группа: {group}, регистров: {len(csrs)}\n")
            f.write("//------------------------------------------------------------------------------\n\n")
            for block in all_classes:
                f.write(block)
                f.write("\n\n")

        print(f"  Written {out_path}")


if __name__ == "__main__":
    main()