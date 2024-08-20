################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.c \
../User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_grad.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_math.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_path.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_pending.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.c \
../User/lvgl/src/draw/vg_lite/lv_vg_lite_utils.c 

OBJS += \
./User/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.o \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_grad.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_math.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_path.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_pending.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.o \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_utils.o 

C_DEPS += \
./User/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.d \
./User/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_grad.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_math.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_path.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_pending.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_stroke.d \
./User/lvgl/src/draw/vg_lite/lv_vg_lite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/vg_lite/%.o: ../User/lvgl/src/draw/vg_lite/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

