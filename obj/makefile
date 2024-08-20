################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/ssd1306/subdir.mk
-include src/subdir.mk
-include StdPeriphDriver/subdir.mk
-include Startup/subdir.mk
-include RVMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
CH592F_SSD1306.hex \

SECONDARY_LIST += \
CH592F_SSD1306.lst \

SECONDARY_SIZE += \
CH592F_SSD1306.siz \


# All Target
all: CH592F_SSD1306.elf secondary-outputs

# Tool invocations
CH592F_SSD1306.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Ofast -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "C:\MRS_DATA\workspace\CH592F_SSD1306\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -L"../" -L"C:\MRS_DATA\workspace\CH592F_SSD1306\StdPeriphDriver" -Xlinker --print-memory-usage -Wl,-Map,"CH592F_SSD1306.map" --specs=nano.specs --specs=nosys.specs -o "CH592F_SSD1306.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
CH592F_SSD1306.hex: CH592F_SSD1306.elf
	@	riscv-none-embed-objcopy -O ihex "CH592F_SSD1306.elf"  "CH592F_SSD1306.hex"
	@	@
CH592F_SSD1306.lst: CH592F_SSD1306.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "CH592F_SSD1306.elf" > "CH592F_SSD1306.lst"
	@	@
CH592F_SSD1306.siz: CH592F_SSD1306.elf
	@	riscv-none-embed-size --format=berkeley "CH592F_SSD1306.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) CH592F_SSD1306.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
