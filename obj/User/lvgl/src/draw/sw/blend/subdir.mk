################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.c \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.c \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.c \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

OBJS += \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.o \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.o \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.o \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 

C_DEPS += \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_al88.d \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_i1.d \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_l8.d \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./User/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/sw/blend/%.o: ../User/lvgl/src/draw/sw/blend/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

