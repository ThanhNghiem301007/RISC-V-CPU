# RV32I Piplined CPU (SystemVerilog)
**Status:** Phase 0, tooling and ISA reading

Goal: Design, verify, and document a 32-bit RISC-V (RV32I) CPU in SystemVerilog, first single-cycle, then 5-stage pipelined, verified automatically against the Spike reference simulator and the official riscv-tests suite, then extended and measured.

Versions (each one is a tagged, shippable release):

- v0.1 ALU, register file, immediate generator, decoder with unit tests
- v1.0 single-cycle RV32I passing rv32ui tests
- v1.1 automatic co-simulation against Spike + one-command regression
- v2.0 5-stage pipeline with forwarding, load-use stall, branch flush
- v2.1 extension (M-extension, then branch predictor)
- v3.0 FPGA build + synthesis numbers + polished README

- **Scope (in):** RV32I base integer ISA (minus FENCE/ECALL/EBREAK initially), unified or split instruction/data memory in simulation, word/half/byte loads and stores. 
- **Scope (out for now):** caches, interrupts, virtual memory, multi-core, floating point.
