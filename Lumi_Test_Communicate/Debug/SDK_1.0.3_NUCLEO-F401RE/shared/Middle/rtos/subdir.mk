################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/eventman.c \
E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/timer.c 

OBJS += \
./SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/eventman.o \
./SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/timer.o 

C_DEPS += \
./SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/eventman.d \
./SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/timer.d 


# Each subdirectory must supply rules for building sources it contributes
SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/eventman.o: E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/eventman.c SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F401VBTx -c -I../Inc -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Include" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/inc" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Utilities" -I"C:/Users/TrungNT/STM32CubeIDE/Lumi/Lumi_Test_Communicate/utils" -I"C:/Users/TrungNT/STM32CubeIDE/Lumi/Lumi_Test_Communicate/utils" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/timer.o: E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/timer.c SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F401VBTx -c -I../Inc -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Include" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/inc" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib" -I"E:/IoT/Application/Funix_303_iot/APIs/SDK_1.0.3_NUCLEO-F401RE/shared/Utilities" -I"C:/Users/TrungNT/STM32CubeIDE/Lumi/Lumi_Test_Communicate/utils" -I"C:/Users/TrungNT/STM32CubeIDE/Lumi/Lumi_Test_Communicate/utils" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

