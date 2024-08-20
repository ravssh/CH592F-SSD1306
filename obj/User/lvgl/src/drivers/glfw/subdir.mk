################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/drivers/glfw/lv_glfw_mouse.c \
../User/lvgl/src/drivers/glfw/lv_glfw_mouse_private.c \
../User/lvgl/src/drivers/glfw/lv_glfw_window.c \
../User/lvgl/src/drivers/glfw/lv_opengles_debug.c \
../User/lvgl/src/drivers/glfw/lv_opengles_driver.c 

OBJS += \
./User/lvgl/src/drivers/glfw/lv_glfw_mouse.o \
./User/lvgl/src/drivers/glfw/lv_glfw_mouse_private.o \
./User/lvgl/src/drivers/glfw/lv_glfw_window.o \
./User/lvgl/src/drivers/glfw/lv_opengles_debug.o \
./User/lvgl/src/drivers/glfw/lv_opengles_driver.o 

C_DEPS += \
./User/lvgl/src/drivers/glfw/lv_glfw_mouse.d \
./User/lvgl/src/drivers/glfw/lv_glfw_mouse_private.d \
./User/lvgl/src/drivers/glfw/lv_glfw_window.d \
./User/lvgl/src/drivers/glfw/lv_opengles_debug.d \
./User/lvgl/src/drivers/glfw/lv_opengles_driver.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/drivers/glfw/%.o: ../User/lvgl/src/drivers/glfw/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

