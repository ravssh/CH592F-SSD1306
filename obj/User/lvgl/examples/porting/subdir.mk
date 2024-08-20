################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/examples/porting/lv_port_disp_template.c \
../User/lvgl/examples/porting/lv_port_fs_template.c \
../User/lvgl/examples/porting/lv_port_indev_template.c \
../User/lvgl/examples/porting/lv_port_lcd_stm32_template.c 

OBJS += \
./User/lvgl/examples/porting/lv_port_disp_template.o \
./User/lvgl/examples/porting/lv_port_fs_template.o \
./User/lvgl/examples/porting/lv_port_indev_template.o \
./User/lvgl/examples/porting/lv_port_lcd_stm32_template.o 

C_DEPS += \
./User/lvgl/examples/porting/lv_port_disp_template.d \
./User/lvgl/examples/porting/lv_port_fs_template.d \
./User/lvgl/examples/porting/lv_port_indev_template.d \
./User/lvgl/examples/porting/lv_port_lcd_stm32_template.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/examples/porting/%.o: ../User/lvgl/examples/porting/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

