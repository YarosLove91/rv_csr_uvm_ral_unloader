# CSR Registers for UVM_RAL

## Overview

This document describes the CSR (Control and Status Register) registers added to the UVM_RAL (Register Abstraction Layer) for testing purposes.

## Added Registers

### 1. mstatus_reg (Machine Status Register)

- **Address**: 0x300
- **Size**: 64 bits
- **Access**: Read/Write
- **Description**: Machine Status register that tracks and controls the hart's current operating state.

**Note**: The YAML specification uses `MXLEN` (Machine XLEN) for the register width. For the RVA23U64 profile, MXLEN = 64 bits (since UXLEN = 64).

**Key Fields (from CSR spec)**:
- **SD** (bit 63): State Dirty - summarizes dirty state
- **MPRV** (bit 17): Modify Privilege - affects loads and stores
- **MPP** (bits 12-11): M-mode Previous Privilege
- **MIE** (bit 3): M-mode Interrupt Enable
- **SIE** (bit 1): S-mode Interrupt Enable

**Usage in UVM**:
```systemverilog
// Write to mstatus
write_reg(jb_reg_block.mstatus, status, 64'h0000_0000_0000_0080); // Set MPIE bit

// Read from mstatus
read_reg(jb_reg_block.mstatus, status, value);
```

### 2. mcause_reg (Machine Cause Register)

- **Address**: 0x342
- **Size**: 64 bits
- **Access**: Read/Write
- **Description**: Reports the cause of the latest exception.

**Note**: The YAML specification uses `MXLEN` (Machine XLEN) for the register width. For the RVA23U64 profile, MXLEN = 64 bits (since UXLEN = 64).

**Key Fields (from CSR spec)**:
- **INT** (bit 63): Interrupt flag - indicates interrupt vs exception
- **CODE** (bits 62-0): Exception/interrupt code

**Usage in UVM**:
```systemverilog
// Write to mcause with interrupt bit set
write_reg(jb_reg_block.mcause, status, 64'h8000_0000_0000_0009); // MEI interrupt

// Read from mcause
read_reg(jb_reg_block.mcause, status, value);
```

## Implementation Details

### File: src/ral.svh

Added two new register classes:

1. **mstatus_reg** - 64-bit register with single field `mstatus_field`
2. **mcause_reg** - 64-bit register with single field `mcause_field`

Both registers are configured as:
- Read/Write access
- Volatile (hardware can update)
- Individually accessible
- No reset value (default 0)

### Register Map

Updated `jelly_bean_reg_block` to include:
- `mstatus` at offset 0x300
- `mcause` at offset 0x342

### Test Sequence

Added `mstatus_mcause_test_sequence` that tests:
1. Basic write/read operations
2. Multiple register values
3. Specific bit patterns (MPIE, MPP, interrupt bits)

### Test Case

Added `mstatus_mcause_test` test class that runs the test sequence.

## CSR Specification References

- **mstatus**: `csr_spec/csr/mstatus.yaml`
- **mcause**: `csr_spec/csr/mcause.yaml`
- **Profile**: `csr_spec/profile/RVA23U64.yaml`

## Running the Test

```bash
# Build and run the test
make uvm_run TEST_NAME=mstatus_mcause_test

# Or run existing tests
make uvm_run TEST_NAME=jelly_bean_reg_test
make uvm_run TEST_NAME=jelly_bean_reg_hw_reset_test
```

## Notes

1. **Simplified Implementation**: The registers are implemented as simple 64-bit read/write registers without complex field logic from the CSR spec.

2. **No Hardware Update**: In the current DUT (jelly_bean_taster), these registers don't have actual hardware backing, so they behave as simple memory locations.

3. **Future Enhancements**:
   - Add bit-level field definitions for mstatus fields (SD, MPRV, MPP, etc.)
   - Add interrupt/exception code validation for mcause
   - Add hardware update behavior in DUT
   - Add reset values according to CSR spec

## Test Output Example

```
UVM_INFO src/sequences.svh:77 - Testing mstatus register
UVM_INFO src/sequences.svh:81 - mstatus write: status=UVM_IS_OK
UVM_INFO src/sequences.svh:83 - mstatus read: value=0x0000000000000001, status=UVM_IS_OK
UVM_INFO src/sequences.svh:87 - Testing mcause register
UVM_INFO src/sequences.svh:91 - mcause write: status=UVM_IS_OK
UVM_INFO src/sequences.svh:93 - mcause read: value=0x000000000000000d, status=UVM_IS_OK
```

## Additional Registers with Bit Fields

### 3. mepc_reg (Machine Exception Program Counter)

- **Address**: 0x341
- **Size**: 64 bits
- **Access**: Read/Write
- **Description**: Written with the PC of an instruction on an exception or interrupt taken in M-mode.

**Fields**:
- **PC** (bits 63-0): Program Counter - virtual address of the instruction that caused the exception

**Usage**:
```systemverilog
// Write to mepc
jb_reg_block.mepc.write(status, 64'h0000_0000_8000_0000);

// Read from mepc
jb_reg_block.mepc.read(status, value);

// Access individual field
jb_reg_block.mepc.pc.write(status, 64'h0000_0000_8000_1000);
jb_reg_block.mepc.pc.read(status, value);
```

### 4. mie_reg (Machine Interrupt Enable)

- **Address**: 0x304
- **Size**: 64 bits
- **Access**: Read/Write
- **Description**: Controls which interrupts are enabled in M-mode.

**Fields**:
- **ssie** (bit 1): Supervisor Software Interrupt Enable
- **msie** (bit 3): Machine Software Interrupt Enable
- **stie** (bit 5): Supervisor Timer Interrupt Enable
- **mtie** (bit 7): Machine Timer Interrupt Enable
- **seie** (bit 9): Supervisor External Interrupt Enable
- **meie** (bit 11): Machine External Interrupt Enable
- **lcofie** (bit 13): Local Counter Overflow Interrupt Enable

**Usage**:
```systemverilog
// Write to individual fields
jb_reg_block.mie.msie.write(status, 1'b1);  // Enable machine software interrupt
jb_reg_block.mie.mtie.write(status, 1'b1);  // Enable machine timer interrupt

// Read individual fields
jb_reg_block.mie.meie.read(status, value);

// Write multiple bits at once
jb_reg_block.mie.write(status, 64'h0000_0000_0000_2A0A); // MSIE, STIE, MEIE
```

## CSR Specification References

- **mstatus**: `csr_spec/csr/mstatus.yaml`
- **mcause**: `csr_spec/csr/mcause.yaml`
- **mepc**: `csr_spec/csr/mepc.yaml`
- **mie**: `csr_spec/csr/mie.yaml`
- **Profile**: `csr_spec/profile/RVA23U64.yaml`

## Running the Tests

```bash
# Test registers without bit fields
make uvm_run TEST_NAME=mstatus_mcause_test

# Test registers with bit fields
make uvm_run TEST_NAME=mie_mepc_test

# Test all CSR registers (comprehensive test)
make uvm_run TEST_NAME=all_csr_registers_test

# Run basic jelly_bean tests
make uvm_run TEST_NAME=jelly_bean_reg_test
make uvm_run TEST_NAME=jelly_bean_reg_hw_reset_test
```

## Output Example

The tests provide detailed register information using UVM RAL methods:

```bash
# Example output from mie_mepc_test:
=== Register Information ===
mstatus register:
----------------------------------------------------------------------------
Name             Type           Size  Value                                 
----------------------------------------------------------------------------
mstatus          mstatus_reg    -     @248                                  
  mstatus_field  uvm_reg_field  ...    RW mstatus[63:0]=64'h0000000000000000
----------------------------------------------------------------------------

mie register:
-----------------------------------------------------------------
Name      Type           Size  Value                             
-----------------------------------------------------------------
mie       mie_reg        -     @257                              
  ssie    uvm_reg_field  ...    RW mie[1:1]=1'h1 (Mirror: 1'h0)  
  msie    uvm_reg_field  ...    RW mie[3:3]=1'h1 (Mirror: 1'h0)  
  stie    uvm_reg_field  ...    RW mie[5:5]=1'h0                 
  mtie    uvm_reg_field  ...    RW mie[7:7]=1'h1 (Mirror: 1'h0)  
  seie    uvm_reg_field  ...    RW mie[9:9]=1'h1 (Mirror: 1'h0)  
  meie    uvm_reg_field  ...    RW mie[11:11]=1'h1 (Mirror: 1'h0)
  lcofie  uvm_reg_field  ...    RW mie[13:13]=1'h1 (Mirror: 1'h0)
-----------------------------------------------------------------
```

**Methods used:**
- `print()` - Shows all registers in a table format
- `sprint()` - Returns formatted string for individual registers
- Both methods show register name, type, size, and current value

## Test: all_csr_registers_test

This comprehensive test covers all CSR registers we implemented:

1. **mstatus Register (0x300)** - Machine Status
   - Write/read operations
   - MPP bits (12:11) testing

2. **mie Register (0x304)** - Machine Interrupt Enable
   - Individual bit fields (MSIE, MTIE, MEIE)
   - Multiple bits at once
   - Full register read/write

3. **mepc Register (0x341)** - Machine Exception Program Counter
   - Aligned address testing
   - Unaligned address testing (LSB masking)
   - PC field access

4. **mcause Register (0x342)** - Machine Cause
   - Exception code testing
   - Interrupt bit (bit 63) testing

5. **Register Interactions**
   - Exception handling sequence simulation
   - Multi-register coordination

Example output:
```
╔══════════════════════════════════════════════════════════════╗
║           Testing All CSR Registers                         ║
╚══════════════════════════════════════════════════════════════╝

┌─────────────────────────────────────────────────────────────┐
│ 1. Testing mstatus Register (0x300) - Machine Status        │
└─────────────────────────────────────────────────────────────┘
  Testing write/read operations...
  Write 0x0000000000000001: status=UVM_IS_OK
  Read value: 0x0000000000000001, status=UVM_IS_OK

┌─────────────────────────────────────────────────────────────┐
│ 2. Testing mie Register (0x304) - Machine Interrupt Enable  │
└─────────────────────────────────────────────────────────────┘
  Testing individual interrupt enable bits...
  MSIE (bit 3) write: status=UVM_IS_OK
  MTIE (bit 7) write: status=UVM_IS_OK
  MEIE (bit 11) write: status=UVM_IS_OK
  Read full register: value=0x0000000000000888
    MSIE (bit 3) = 1
    MTIE (bit 7) = 1
    MEIE (bit 11) = 1
```

## Notes

1. **Bit Field Implementation**: The `mie` register demonstrates how to implement multiple bit fields within a single register. Each field has its own position and size.

2. **Field Access**: Individual fields can be read/written using the field name (e.g., `jb_reg_block.mie.mtie.write()`).

3. **Byte Enable Warning**: When accessing individual fields, UVM may warn that the target bus doesn't support byte enable. This is expected because the jelly_bean interface doesn't support byte-level access.

4. **Address Mapping**: Registers are mapped to their correct CSR addresses with 8-byte spacing to accommodate 64-bit registers.

## Copyright

This implementation is based on the jelly_bean UVM RAL example and extended with RISC-V CSR registers for educational and testing purposes.