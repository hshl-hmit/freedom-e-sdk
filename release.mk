###################################################
# Build Flags for the Release Configuration
###################################################

# Set the optimization level
RISCV_ASFLAGS += -Os
RISCV_CFLAGS += -Os
RISCV_CXXFLAGS += -Os

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
