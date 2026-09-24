# Полный перечень регистров RVA23S64

Источник: `tools/csr_monolith_reduced.yaml` (профиль RVA23S64, всего 356 CSR).
Один CSR → одно расширение. Группа `rv32_only` (xlen:32) не генерируется.

## Sm — 151

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x300 | `mstatus` | 64 | 23 |
| 0x301 | `misa` | 64 | 13 |
| 0x303 | `mideleg` | 64 | 11 |
| 0x304 | `mie` | 64 | 11 |
| 0x305 | `mtvec` | 64 | 2 |
| 0x30a | `menvcfg` | 64 | 7 |
| 0x320 | `mcountinhibit` | 32 | 31 |
| 0x323 | `mhpmevent3` | 64 | 7 |
| 0x324 | `mhpmevent4` | 64 | 7 |
| 0x325 | `mhpmevent5` | 64 | 7 |
| 0x326 | `mhpmevent6` | 64 | 7 |
| 0x327 | `mhpmevent7` | 64 | 7 |
| 0x328 | `mhpmevent8` | 64 | 7 |
| 0x329 | `mhpmevent9` | 64 | 7 |
| 0x32a | `mhpmevent10` | 64 | 7 |
| 0x32b | `mhpmevent11` | 64 | 7 |
| 0x32c | `mhpmevent12` | 64 | 7 |
| 0x32d | `mhpmevent13` | 64 | 7 |
| 0x32e | `mhpmevent14` | 64 | 7 |
| 0x32f | `mhpmevent15` | 64 | 7 |
| 0x330 | `mhpmevent16` | 64 | 7 |
| 0x331 | `mhpmevent17` | 64 | 7 |
| 0x332 | `mhpmevent18` | 64 | 7 |
| 0x333 | `mhpmevent19` | 64 | 7 |
| 0x334 | `mhpmevent20` | 64 | 7 |
| 0x335 | `mhpmevent21` | 64 | 7 |
| 0x336 | `mhpmevent22` | 64 | 7 |
| 0x337 | `mhpmevent23` | 64 | 7 |
| 0x338 | `mhpmevent24` | 64 | 7 |
| 0x339 | `mhpmevent25` | 64 | 7 |
| 0x33a | `mhpmevent26` | 64 | 7 |
| 0x33b | `mhpmevent27` | 64 | 7 |
| 0x33c | `mhpmevent28` | 64 | 7 |
| 0x33d | `mhpmevent29` | 64 | 7 |
| 0x33e | `mhpmevent30` | 64 | 7 |
| 0x33f | `mhpmevent31` | 64 | 7 |
| 0x340 | `mscratch` | 64 | 1 |
| 0x341 | `mepc` | 64 | 1 |
| 0x342 | `mcause` | 64 | 2 |
| 0x343 | `mtval` | 64 | 1 |
| 0x344 | `mip` | 64 | 11 |
| 0x3a0 | `pmpcfg0` | 64 | 8 |
| 0x3a2 | `pmpcfg2` | 64 | 8 |
| 0x3a4 | `pmpcfg4` | 64 | 8 |
| 0x3a6 | `pmpcfg6` | 64 | 8 |
| 0x3a8 | `pmpcfg8` | 64 | 8 |
| 0x3aa | `pmpcfg10` | 64 | 8 |
| 0x3ac | `pmpcfg12` | 64 | 8 |
| 0x3ae | `pmpcfg14` | 64 | 8 |
| 0x3b0 | `pmpaddr0` | 64 | 1 |
| 0x3b1 | `pmpaddr1` | 64 | 1 |
| 0x3b2 | `pmpaddr2` | 64 | 1 |
| 0x3b3 | `pmpaddr3` | 64 | 1 |
| 0x3b4 | `pmpaddr4` | 64 | 1 |
| 0x3b5 | `pmpaddr5` | 64 | 1 |
| 0x3b6 | `pmpaddr6` | 64 | 1 |
| 0x3b7 | `pmpaddr7` | 64 | 1 |
| 0x3b8 | `pmpaddr8` | 64 | 1 |
| 0x3b9 | `pmpaddr9` | 64 | 1 |
| 0x3ba | `pmpaddr10` | 64 | 1 |
| 0x3bb | `pmpaddr11` | 64 | 1 |
| 0x3bc | `pmpaddr12` | 64 | 1 |
| 0x3bd | `pmpaddr13` | 64 | 1 |
| 0x3be | `pmpaddr14` | 64 | 1 |
| 0x3bf | `pmpaddr15` | 64 | 1 |
| 0x3c0 | `pmpaddr16` | 64 | 1 |
| 0x3c1 | `pmpaddr17` | 64 | 1 |
| 0x3c2 | `pmpaddr18` | 64 | 1 |
| 0x3c3 | `pmpaddr19` | 64 | 1 |
| 0x3c4 | `pmpaddr20` | 64 | 1 |
| 0x3c5 | `pmpaddr21` | 64 | 1 |
| 0x3c6 | `pmpaddr22` | 64 | 1 |
| 0x3c7 | `pmpaddr23` | 64 | 1 |
| 0x3c8 | `pmpaddr24` | 64 | 1 |
| 0x3c9 | `pmpaddr25` | 64 | 1 |
| 0x3ca | `pmpaddr26` | 64 | 1 |
| 0x3cb | `pmpaddr27` | 64 | 1 |
| 0x3cc | `pmpaddr28` | 64 | 1 |
| 0x3cd | `pmpaddr29` | 64 | 1 |
| 0x3ce | `pmpaddr30` | 64 | 1 |
| 0x3cf | `pmpaddr31` | 64 | 1 |
| 0x3d0 | `pmpaddr32` | 64 | 1 |
| 0x3d1 | `pmpaddr33` | 64 | 1 |
| 0x3d2 | `pmpaddr34` | 64 | 1 |
| 0x3d3 | `pmpaddr35` | 64 | 1 |
| 0x3d4 | `pmpaddr36` | 64 | 1 |
| 0x3d5 | `pmpaddr37` | 64 | 1 |
| 0x3d6 | `pmpaddr38` | 64 | 1 |
| 0x3d7 | `pmpaddr39` | 64 | 1 |
| 0x3d8 | `pmpaddr40` | 64 | 1 |
| 0x3d9 | `pmpaddr41` | 64 | 1 |
| 0x3da | `pmpaddr42` | 64 | 1 |
| 0x3db | `pmpaddr43` | 64 | 1 |
| 0x3dc | `pmpaddr44` | 64 | 1 |
| 0x3dd | `pmpaddr45` | 64 | 1 |
| 0x3de | `pmpaddr46` | 64 | 1 |
| 0x3df | `pmpaddr47` | 64 | 1 |
| 0x3e0 | `pmpaddr48` | 64 | 1 |
| 0x3e1 | `pmpaddr49` | 64 | 1 |
| 0x3e2 | `pmpaddr50` | 64 | 1 |
| 0x3e3 | `pmpaddr51` | 64 | 1 |
| 0x3e4 | `pmpaddr52` | 64 | 1 |
| 0x3e5 | `pmpaddr53` | 64 | 1 |
| 0x3e6 | `pmpaddr54` | 64 | 1 |
| 0x3e7 | `pmpaddr55` | 64 | 1 |
| 0x3e8 | `pmpaddr56` | 64 | 1 |
| 0x3e9 | `pmpaddr57` | 64 | 1 |
| 0x3ea | `pmpaddr58` | 64 | 1 |
| 0x3eb | `pmpaddr59` | 64 | 1 |
| 0x3ec | `pmpaddr60` | 64 | 1 |
| 0x3ed | `pmpaddr61` | 64 | 1 |
| 0x3ee | `pmpaddr62` | 64 | 1 |
| 0x3ef | `pmpaddr63` | 64 | 1 |
| 0x60a | `henvcfg` | 64 | 7 |
| 0x747 | `mseccfg` | 64 | 0 |
| 0xb00 | `mcycle` | 64 | 1 |
| 0xb02 | `minstret` | 64 | 1 |
| 0xb03 | `mhpmcounter3` | 64 | 1 |
| 0xb04 | `mhpmcounter4` | 64 | 1 |
| 0xb05 | `mhpmcounter5` | 64 | 1 |
| 0xb06 | `mhpmcounter6` | 64 | 1 |
| 0xb07 | `mhpmcounter7` | 64 | 1 |
| 0xb08 | `mhpmcounter8` | 64 | 1 |
| 0xb09 | `mhpmcounter9` | 64 | 1 |
| 0xb0a | `mhpmcounter10` | 64 | 1 |
| 0xb0b | `mhpmcounter11` | 64 | 1 |
| 0xb0c | `mhpmcounter12` | 64 | 1 |
| 0xb0d | `mhpmcounter13` | 64 | 1 |
| 0xb0e | `mhpmcounter14` | 64 | 1 |
| 0xb0f | `mhpmcounter15` | 64 | 1 |
| 0xb10 | `mhpmcounter16` | 64 | 1 |
| 0xb11 | `mhpmcounter17` | 64 | 1 |
| 0xb12 | `mhpmcounter18` | 64 | 1 |
| 0xb13 | `mhpmcounter19` | 64 | 1 |
| 0xb14 | `mhpmcounter20` | 64 | 1 |
| 0xb15 | `mhpmcounter21` | 64 | 1 |
| 0xb16 | `mhpmcounter22` | 64 | 1 |
| 0xb17 | `mhpmcounter23` | 64 | 1 |
| 0xb18 | `mhpmcounter24` | 64 | 1 |
| 0xb19 | `mhpmcounter25` | 64 | 1 |
| 0xb1a | `mhpmcounter26` | 64 | 1 |
| 0xb1b | `mhpmcounter27` | 64 | 1 |
| 0xb1c | `mhpmcounter28` | 64 | 1 |
| 0xb1d | `mhpmcounter29` | 64 | 1 |
| 0xb1e | `mhpmcounter30` | 64 | 1 |
| 0xb1f | `mhpmcounter31` | 64 | 1 |
| 0xf11 | `mvendorid` | 32 | 2 |
| 0xf12 | `marchid` | 64 | 1 |
| 0xf13 | `mimpid` | 64 | 1 |
| 0xf14 | `mhartid` | 64 | 1 |
| 0xf15 | `mconfigptr` | 64 | 1 |

## S — 14

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x100 | `sstatus` | 64 | 11 |
| 0x104 | `sie` | 64 | 4 |
| 0x105 | `stvec` | 64 | 2 |
| 0x106 | `scounteren` | 32 | 32 |
| 0x10a | `senvcfg` | 64 | 4 |
| 0x140 | `sscratch` | 64 | 1 |
| 0x141 | `sepc` | 64 | 1 |
| 0x142 | `scause` | 64 | 2 |
| 0x143 | `stval` | 64 | 1 |
| 0x144 | `sip` | 64 | 4 |
| 0x180 | `satp` | 64 | 3 |
| 0x302 | `medeleg` | 64 | 19 |
| 0x5a8 | `scontext` | 64 | 1 |
| 0x7aa | `mscontext` | 64 | 1 |

## H — 22

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x200 | `vsstatus` | 64 | 11 |
| 0x205 | `vstvec` | 64 | 2 |
| 0x241 | `vsepc` | 64 | 1 |
| 0x242 | `vscause` | 64 | 2 |
| 0x243 | `vstval` | 64 | 1 |
| 0x24d | `vstimecmp` | 64 | 1 |
| 0x24e | `vsctrctl` | 64 | 20 |
| 0x280 | `vsatp` | 64 | 3 |
| 0x34a | `mtinst` | 64 | 1 |
| 0x34b | `mtval2` | 64 | 1 |
| 0x600 | `hstatus` | 64 | 10 |
| 0x602 | `hedeleg` | 64 | 19 |
| 0x605 | `htimedelta` | 64 | 1 |
| 0x606 | `hcounteren` | 32 | 32 |
| 0x60c | `hstateen0` | 64 | 6 |
| 0x60d | `hstateen1` | 64 | 1 |
| 0x60e | `hstateen2` | 64 | 1 |
| 0x60f | `hstateen3` | 64 | 1 |
| 0x643 | `htval` | 64 | 1 |
| 0x64a | `htinst` | 64 | 1 |
| 0x680 | `hgatp` | 64 | 3 |
| 0x6a8 | `hcontext` | 64 | 1 |

## U — 1

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x306 | `mcounteren` | 32 | 32 |

## F — 3

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x001 | `fflags` | 32 | 5 |
| 0x002 | `frm` | 32 | 1 |
| 0x003 | `fcsr` | 32 | 6 |

## Sdtrig — 7

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x7a0 | `tselect` | 64 | 1 |
| 0x7a1 | `tdata1` | 64 | 3 |
| 0x7a2 | `tdata2` | 64 | 1 |
| 0x7a3 | `tdata3` | 64 | 1 |
| 0x7a4 | `tinfo` | 64 | 2 |
| 0x7a5 | `tcontrol` | 64 | 2 |
| 0x7a8 | `mcontext` | 64 | 1 |

## Sscofpmf — 1

| Address | Register | Length | Fields |
|---|---|---|---|
| 0xda0 | `scountovf` | 32 | 29 |

## Ssstateen — 4

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x10c | `sstateen0` | 64 | 2 |
| 0x10d | `sstateen1` | 64 | 1 |
| 0x10e | `sstateen2` | 64 | 1 |
| 0x10f | `sstateen3` | 64 | 1 |

## Sstc — 1

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x14d | `stimecmp` | 64 | 1 |

## Zicntr — 3

| Address | Register | Length | Fields |
|---|---|---|---|
| 0xc00 | `cycle` | 64 | 1 |
| 0xc01 | `time` | 64 | 1 |
| 0xc02 | `instret` | 64 | 1 |

## Zihpm — 29

| Address | Register | Length | Fields |
|---|---|---|---|
| 0xc03 | `hpmcounter3` | 64 | 1 |
| 0xc04 | `hpmcounter4` | 64 | 1 |
| 0xc05 | `hpmcounter5` | 64 | 1 |
| 0xc06 | `hpmcounter6` | 64 | 1 |
| 0xc07 | `hpmcounter7` | 64 | 1 |
| 0xc08 | `hpmcounter8` | 64 | 1 |
| 0xc09 | `hpmcounter9` | 64 | 1 |
| 0xc0a | `hpmcounter10` | 64 | 1 |
| 0xc0b | `hpmcounter11` | 64 | 1 |
| 0xc0c | `hpmcounter12` | 64 | 1 |
| 0xc0d | `hpmcounter13` | 64 | 1 |
| 0xc0e | `hpmcounter14` | 64 | 1 |
| 0xc0f | `hpmcounter15` | 64 | 1 |
| 0xc10 | `hpmcounter16` | 64 | 1 |
| 0xc11 | `hpmcounter17` | 64 | 1 |
| 0xc12 | `hpmcounter18` | 64 | 1 |
| 0xc13 | `hpmcounter19` | 64 | 1 |
| 0xc14 | `hpmcounter20` | 64 | 1 |
| 0xc15 | `hpmcounter21` | 64 | 1 |
| 0xc16 | `hpmcounter22` | 64 | 1 |
| 0xc17 | `hpmcounter23` | 64 | 1 |
| 0xc18 | `hpmcounter24` | 64 | 1 |
| 0xc19 | `hpmcounter25` | 64 | 1 |
| 0xc1a | `hpmcounter26` | 64 | 1 |
| 0xc1b | `hpmcounter27` | 64 | 1 |
| 0xc1c | `hpmcounter28` | 64 | 1 |
| 0xc1d | `hpmcounter29` | 64 | 1 |
| 0xc1e | `hpmcounter30` | 64 | 1 |
| 0xc1f | `hpmcounter31` | 64 | 1 |

## Zvl32b — 7

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x008 | `vstart` | 64 | 1 |
| 0x009 | `vxsat` | 64 | 1 |
| 0x00a | `vxrm` | 64 | 1 |
| 0x00f | `vcsr` | 64 | 2 |
| 0xc20 | `vl` | 64 | 1 |
| 0xc21 | `vtype` | 64 | 5 |
| 0xc22 | `vlenb` | 64 | 1 |

## rv32_only — 113 (не генерируется)

| Address | Register | Length | Fields |
|---|---|---|---|
| 0x15d | `stimecmph` | 32 | 1 |
| 0x25d | `vstimecmph` | 32 | 1 |
| 0x310 | `mstatush` | 32 | 4 |
| 0x312 | `medelegh` | 32 | 0 |
| 0x31a | `menvcfgh` | 32 | 3 |
| 0x3a1 | `pmpcfg1` | 64 | 4 |
| 0x3a3 | `pmpcfg3` | 64 | 4 |
| 0x3a5 | `pmpcfg5` | 64 | 4 |
| 0x3a7 | `pmpcfg7` | 64 | 4 |
| 0x3a9 | `pmpcfg9` | 64 | 4 |
| 0x3ab | `pmpcfg11` | 64 | 4 |
| 0x3ad | `pmpcfg13` | 64 | 4 |
| 0x3af | `pmpcfg15` | 64 | 4 |
| 0x612 | `hedelegh` | 32 | 0 |
| 0x615 | `htimedeltah` | 32 | 1 |
| 0x61a | `henvcfgh` | 32 | 3 |
| 0x61c | `hstateen0h` | 32 | 4 |
| 0x61d | `hstateen1h` | 32 | 1 |
| 0x61e | `hstateen2h` | 32 | 1 |
| 0x61f | `hstateen3h` | 32 | 1 |
| 0x723 | `mhpmevent3h` | 32 | 7 |
| 0x724 | `mhpmevent4h` | 32 | 7 |
| 0x725 | `mhpmevent5h` | 32 | 7 |
| 0x726 | `mhpmevent6h` | 32 | 7 |
| 0x727 | `mhpmevent7h` | 32 | 7 |
| 0x728 | `mhpmevent8h` | 32 | 7 |
| 0x729 | `mhpmevent9h` | 32 | 7 |
| 0x72a | `mhpmevent10h` | 32 | 7 |
| 0x72b | `mhpmevent11h` | 32 | 7 |
| 0x72c | `mhpmevent12h` | 32 | 7 |
| 0x72d | `mhpmevent13h` | 32 | 7 |
| 0x72e | `mhpmevent14h` | 32 | 7 |
| 0x72f | `mhpmevent15h` | 32 | 7 |
| 0x730 | `mhpmevent16h` | 32 | 7 |
| 0x731 | `mhpmevent17h` | 32 | 7 |
| 0x732 | `mhpmevent18h` | 32 | 7 |
| 0x733 | `mhpmevent19h` | 32 | 7 |
| 0x734 | `mhpmevent20h` | 32 | 7 |
| 0x735 | `mhpmevent21h` | 32 | 7 |
| 0x736 | `mhpmevent22h` | 32 | 7 |
| 0x737 | `mhpmevent23h` | 32 | 7 |
| 0x738 | `mhpmevent24h` | 32 | 7 |
| 0x739 | `mhpmevent25h` | 32 | 7 |
| 0x73a | `mhpmevent26h` | 32 | 7 |
| 0x73b | `mhpmevent27h` | 32 | 7 |
| 0x73c | `mhpmevent28h` | 32 | 7 |
| 0x73d | `mhpmevent29h` | 32 | 7 |
| 0x73e | `mhpmevent30h` | 32 | 7 |
| 0x73f | `mhpmevent31h` | 32 | 7 |
| 0x757 | `mseccfgh` | 32 | 0 |
| 0xb80 | `mcycleh` | 32 | 1 |
| 0xb82 | `minstreth` | 32 | 1 |
| 0xb83 | `mhpmcounter3h` | 32 | 1 |
| 0xb84 | `mhpmcounter4h` | 32 | 1 |
| 0xb85 | `mhpmcounter5h` | 32 | 1 |
| 0xb86 | `mhpmcounter6h` | 32 | 1 |
| 0xb87 | `mhpmcounter7h` | 32 | 1 |
| 0xb88 | `mhpmcounter8h` | 32 | 1 |
| 0xb89 | `mhpmcounter9h` | 32 | 1 |
| 0xb8a | `mhpmcounter10h` | 32 | 1 |
| 0xb8b | `mhpmcounter11h` | 32 | 1 |
| 0xb8c | `mhpmcounter12h` | 32 | 1 |
| 0xb8d | `mhpmcounter13h` | 32 | 1 |
| 0xb8e | `mhpmcounter14h` | 32 | 1 |
| 0xb8f | `mhpmcounter15h` | 32 | 1 |
| 0xb90 | `mhpmcounter16h` | 32 | 1 |
| 0xb91 | `mhpmcounter17h` | 32 | 1 |
| 0xb92 | `mhpmcounter18h` | 32 | 1 |
| 0xb93 | `mhpmcounter19h` | 32 | 1 |
| 0xb94 | `mhpmcounter20h` | 32 | 1 |
| 0xb95 | `mhpmcounter21h` | 32 | 1 |
| 0xb96 | `mhpmcounter22h` | 32 | 1 |
| 0xb97 | `mhpmcounter23h` | 32 | 1 |
| 0xb98 | `mhpmcounter24h` | 32 | 1 |
| 0xb99 | `mhpmcounter25h` | 32 | 1 |
| 0xb9a | `mhpmcounter26h` | 32 | 1 |
| 0xb9b | `mhpmcounter27h` | 32 | 1 |
| 0xb9c | `mhpmcounter28h` | 32 | 1 |
| 0xb9d | `mhpmcounter29h` | 32 | 1 |
| 0xb9e | `mhpmcounter30h` | 32 | 1 |
| 0xb9f | `mhpmcounter31h` | 32 | 1 |
| 0xc80 | `cycleh` | 32 | 1 |
| 0xc81 | `timeh` | 32 | 1 |
| 0xc82 | `instreth` | 32 | 1 |
| 0xc83 | `hpmcounter3h` | 32 | 1 |
| 0xc84 | `hpmcounter4h` | 32 | 1 |
| 0xc85 | `hpmcounter5h` | 32 | 1 |
| 0xc86 | `hpmcounter6h` | 32 | 1 |
| 0xc87 | `hpmcounter7h` | 32 | 1 |
| 0xc88 | `hpmcounter8h` | 32 | 1 |
| 0xc89 | `hpmcounter9h` | 32 | 1 |
| 0xc8a | `hpmcounter10h` | 32 | 1 |
| 0xc8b | `hpmcounter11h` | 32 | 1 |
| 0xc8c | `hpmcounter12h` | 32 | 1 |
| 0xc8d | `hpmcounter13h` | 32 | 1 |
| 0xc8e | `hpmcounter14h` | 32 | 1 |
| 0xc8f | `hpmcounter15h` | 32 | 1 |
| 0xc90 | `hpmcounter16h` | 32 | 1 |
| 0xc91 | `hpmcounter17h` | 32 | 1 |
| 0xc92 | `hpmcounter18h` | 32 | 1 |
| 0xc93 | `hpmcounter19h` | 32 | 1 |
| 0xc94 | `hpmcounter20h` | 32 | 1 |
| 0xc95 | `hpmcounter21h` | 32 | 1 |
| 0xc96 | `hpmcounter22h` | 32 | 1 |
| 0xc97 | `hpmcounter23h` | 32 | 1 |
| 0xc98 | `hpmcounter24h` | 32 | 1 |
| 0xc99 | `hpmcounter25h` | 32 | 1 |
| 0xc9a | `hpmcounter26h` | 32 | 1 |
| 0xc9b | `hpmcounter27h` | 32 | 1 |
| 0xc9c | `hpmcounter28h` | 32 | 1 |
| 0xc9d | `hpmcounter29h` | 32 | 1 |
| 0xc9e | `hpmcounter30h` | 32 | 1 |
| 0xc9f | `hpmcounter31h` | 32 | 1 |

## Итого

| Группа | Регистров | Генерируется |
|---|---|---|
| Sm | 151 | да |
| S | 14 | да |
| H | 22 | да |
| U | 1 | да |
| F | 3 | да |
| Sdtrig | 7 | да |
| Sscofpmf | 1 | да |
| Ssstateen | 4 | да |
| Sstc | 1 | да |
| Zicntr | 3 | да |
| Zihpm | 29 | да |
| Zvl32b | 7 | да |
| rv32_only | 113 | нет |
| **Всего** | **356** | **243** |

