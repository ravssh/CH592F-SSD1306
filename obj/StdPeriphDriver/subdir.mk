################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../StdPeriphDriver/CH59x_adc.c \
../StdPeriphDriver/CH59x_clk.c \
../StdPeriphDriver/CH59x_flash.c \
../StdPeriphDriver/CH59x_gpio.c \
../StdPeriphDriver/CH59x_i2c.c \
../StdPeriphDriver/CH59x_pwr.c \
../StdPeriphDriver/CH59x_sys.c \
../StdPeriphDriver/CH59x_timer0.c \
../StdPeriphDriver/CH59x_uart0.c 

OBJS += \
./StdPeriphDriver/CH59x_adc.o \
./StdPeriphDriver/CH59x_clk.o \
./StdPeriphDriver/CH59x_flash.o \
./StdPeriphDriver/CH59x_gpio.o \
./StdPeriphDriver/CH59x_i2c.o \
./StdPeriphDriver/CH59x_pwr.o \
./StdPeriphDriver/CH59x_sys.o \
./StdPeriphDriver/CH59x_timer0.o \
./StdPeriphDriver/CH59x_uart0.o 

C_DEPS += \
./StdPeriphDriver/CH59x_adc.d \
./StdPeriphDriver/CH59x_clk.d \
./StdPeriphDriver/CH59x_flash.d \
./StdPeriphDriver/CH59x_gpio.d \
./StdPeriphDriver/CH59x_i2c.d \
./StdPeriphDriver/CH59x_pwr.d \
./StdPeriphDriver/CH59x_sys.d \
./StdPeriphDriver/CH59x_timer0.d \
./StdPeriphDriver/CH59x_uart0.d 


# Each subdirectory must supply rules for building sources it contributes
StdPeriphDriver/%.o: ../StdPeriphDriver/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Ofast -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=0 -I"C:\MRS_DATA\workspace\CH592F_SSD1306\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F_SSD1306\RVMSIS" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

