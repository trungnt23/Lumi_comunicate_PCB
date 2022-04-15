################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F401VBTx -c -I../Inc -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Include" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/inc" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Utilities" -I"C:/Users/TrungNT/STM32CubeIDE/Lumi/Lumi_Test_Communicate/utils" -I"C:/Users/TrungNT/STM32CubeIDE/Lumi/Lumi_Test_Communicate/utils" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

