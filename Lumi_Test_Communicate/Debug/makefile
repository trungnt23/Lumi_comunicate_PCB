################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Utilities/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/src/subdir.mk
-include SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
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

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Lumi_Test_Communicate
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Lumi_Test_Communicate.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Lumi_Test_Communicate.list \

OBJCOPY_BIN += \
Lumi_Test_Communicate.bin \


# All Target
all: main-build

# Main-build Target
main-build: Lumi_Test_Communicate.elf secondary-outputs

# Tool invocations
Lumi_Test_Communicate.elf: $(OBJS) $(USER_OBJS) C:\Users\TrungNT\STM32CubeIDE\Lumi\Lumi_Test_Communicate\STM32F401VBTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Lumi_Test_Communicate.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\TrungNT\STM32CubeIDE\Lumi\Lumi_Test_Communicate\STM32F401VBTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Lumi_Test_Communicate.map" -Wl,--gc-sections -static -L"E:\IoT\Application\Funix_303_iot\APIs\SDK_1.0.3_NUCLEO-F401RE\lib_stm" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Lumi_Test_Communicate.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Lumi_Test_Communicate.list"
	@echo 'Finished building: $@'
	@echo ' '

Lumi_Test_Communicate.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Lumi_Test_Communicate.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SIZE_OUTPUT)$(OBJDUMP_LIST)$(EXECUTABLES)$(OBJS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(OBJCOPY_BIN) Lumi_Test_Communicate.elf
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
