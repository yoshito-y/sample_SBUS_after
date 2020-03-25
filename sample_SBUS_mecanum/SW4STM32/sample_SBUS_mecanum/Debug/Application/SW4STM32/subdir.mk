################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/SW4STM32/startup_stm32f446xx.s 

OBJS += \
./Application/SW4STM32/startup_stm32f446xx.o 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32f446xx.o: C:/Users/yoshito.y/workspace/STMsample/sample_SBUS_mecanum/SW4STM32/startup_stm32f446xx.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


