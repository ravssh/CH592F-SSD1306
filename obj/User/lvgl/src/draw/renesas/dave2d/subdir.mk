################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.c \
../User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.c 

OBJS += \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o 

C_DEPS += \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d \
./User/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/renesas/dave2d/%.o: ../User/lvgl/src/draw/renesas/dave2d/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

