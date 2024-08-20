################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/drivers/display/lcd/lv_lcd_generic_mipi.c 

OBJS += \
./User/lvgl/src/drivers/display/lcd/lv_lcd_generic_mipi.o 

C_DEPS += \
./User/lvgl/src/drivers/display/lcd/lv_lcd_generic_mipi.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/drivers/display/lcd/%.o: ../User/lvgl/src/drivers/display/lcd/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

