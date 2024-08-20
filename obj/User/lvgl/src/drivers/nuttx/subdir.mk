################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../User/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

OBJS += \
./User/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./User/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 

C_DEPS += \
./User/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./User/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/drivers/nuttx/%.o: ../User/lvgl/src/drivers/nuttx/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

