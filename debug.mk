###################################################
# Build Flags for the Debug Configuration
###################################################

# Set the optimization level
RISCV_ASFLAGS += -O0
RISCV_CFLAGS += -O0
RISCV_CXXFLAGS += -O0

# Enable debug
RISCV_ASFLAGS += -g
RISCV_CFLAGS += -g
RISCV_CXXFLAGS += -g

###################################################
# Overrides
###################################################
# The following overrides build flags to make compilation for the
# SiFive HiFive1 and BBC HiFive Inventor boards work with
# recent versions of GCC and binutils.
# Note: Zicsr and Zifencei have been separated from I extension.
#       This is why "rv32imac" needs to be changed
#       to "rv32imac_zicsr_zifencei".

# Override RISCV_ARCH
RISCV_ARCH = rv32imac_zicsr_zifencei
