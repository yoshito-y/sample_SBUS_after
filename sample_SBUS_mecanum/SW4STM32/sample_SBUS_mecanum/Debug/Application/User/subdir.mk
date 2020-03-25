################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/SBUS_DIR.c \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/gpio.c \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/main.c \
../Application/User/mecanum.c \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/stm32f4xx_hal_msp.c \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/stm32f4xx_it.c \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/tim.c \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/usart.c \
../Application/User/xprintf.c 

CPP_SRCS += \
../Application/User/SBUS.cpp \
../Application/User/wrapper.cpp 

OBJS += \
./Application/User/SBUS.o \
./Application/User/SBUS_DIR.o \
./Application/User/gpio.o \
./Application/User/main.o \
./Application/User/mecanum.o \
./Application/User/stm32f4xx_hal_msp.o \
./Application/User/stm32f4xx_it.o \
./Application/User/tim.o \
./Application/User/usart.o \
./Application/User/wrapper.o \
./Application/User/xprintf.o 

C_DEPS += \
./Application/User/SBUS_DIR.d \
./Application/User/gpio.d \
./Application/User/main.d \
./Application/User/mecanum.d \
./Application/User/stm32f4xx_hal_msp.d \
./Application/User/stm32f4xx_it.d \
./Application/User/tim.d \
./Application/User/usart.d \
./Application/User/xprintf.d 

CPP_DEPS += \
./Application/User/SBUS.d \
./Application/User/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/%.o: ../Application/User/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo $(PWD)
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/%.o: ../Application/User/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gpio.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_hal_msp.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/stm32f4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_it.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/stm32f4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/tim.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usart.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F446xx -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


