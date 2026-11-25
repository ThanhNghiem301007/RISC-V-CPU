# ---- Tools and settings ----
VERILATOR  := verilator
TOP        := top
LINT_FLAGS := --lint-only -Wall --top-module $(TOP)

# ---- Source files ----
# List RTL files here. Packages (e.g. defs_pkg.sv) must come first.
RTL_SRCS := \
	rtl/common/top.sv

# ---- Targets ----
.PHONY: all lint clean

all: lint

lint:
	$(VERILATOR) $(LINT_FLAGS) $(RTL_SRCS)
	@echo "Lint passed"

clean:
	rm -rf build obj_dir
