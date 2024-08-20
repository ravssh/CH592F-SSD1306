################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/sw/lv_draw_sw.c \
../User/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../User/lvgl/src/draw/sw/lv_draw_sw_border.c \
../User/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../User/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../User/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../User/lvgl/src/draw/sw/lv_draw_sw_img.c \
../User/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../User/lvgl/src/draw/sw/lv_draw_sw_line.c \
../User/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../User/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../User/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../User/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../User/lvgl/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./User/lvgl/src/draw/sw/lv_draw_sw.o \
./User/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./User/lvgl/src/draw/sw/lv_draw_sw_border.o \
./User/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./User/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./User/lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./User/lvgl/src/draw/sw/lv_draw_sw_img.o \
./User/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./User/lvgl/src/draw/sw/lv_draw_sw_line.o \
./User/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./User/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./User/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./User/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./User/lvgl/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./User/lvgl/src/draw/sw/lv_draw_sw.d \
./User/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./User/lvgl/src/draw/sw/lv_draw_sw_border.d \
./User/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./User/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./User/lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./User/lvgl/src/draw/sw/lv_draw_sw_img.d \
./User/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./User/lvgl/src/draw/sw/lv_draw_sw_line.d \
./User/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./User/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./User/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./User/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./User/lvgl/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/sw/%.o: ../User/lvgl/src/draw/sw/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

