################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/env_support/pikascript/pika_lv_point_t.c \
../User/lvgl/env_support/pikascript/pika_lv_timer_t.c \
../User/lvgl/env_support/pikascript/pika_lv_wegit.c \
../User/lvgl/env_support/pikascript/pika_lvgl.c \
../User/lvgl/env_support/pikascript/pika_lvgl_indev_t.c \
../User/lvgl/env_support/pikascript/pika_lvgl_lv_event.c \
../User/lvgl/env_support/pikascript/pika_lvgl_lv_obj.c \
../User/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.c 

OBJS += \
./User/lvgl/env_support/pikascript/pika_lv_point_t.o \
./User/lvgl/env_support/pikascript/pika_lv_timer_t.o \
./User/lvgl/env_support/pikascript/pika_lv_wegit.o \
./User/lvgl/env_support/pikascript/pika_lvgl.o \
./User/lvgl/env_support/pikascript/pika_lvgl_indev_t.o \
./User/lvgl/env_support/pikascript/pika_lvgl_lv_event.o \
./User/lvgl/env_support/pikascript/pika_lvgl_lv_obj.o \
./User/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o 

C_DEPS += \
./User/lvgl/env_support/pikascript/pika_lv_point_t.d \
./User/lvgl/env_support/pikascript/pika_lv_timer_t.d \
./User/lvgl/env_support/pikascript/pika_lv_wegit.d \
./User/lvgl/env_support/pikascript/pika_lvgl.d \
./User/lvgl/env_support/pikascript/pika_lvgl_indev_t.d \
./User/lvgl/env_support/pikascript/pika_lvgl_lv_event.d \
./User/lvgl/env_support/pikascript/pika_lvgl_lv_obj.d \
./User/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/env_support/pikascript/%.o: ../User/lvgl/env_support/pikascript/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

