################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/lv_draw.c \
../User/lvgl/src/draw/lv_draw_arc.c \
../User/lvgl/src/draw/lv_draw_buf.c \
../User/lvgl/src/draw/lv_draw_image.c \
../User/lvgl/src/draw/lv_draw_label.c \
../User/lvgl/src/draw/lv_draw_line.c \
../User/lvgl/src/draw/lv_draw_mask.c \
../User/lvgl/src/draw/lv_draw_rect.c \
../User/lvgl/src/draw/lv_draw_triangle.c \
../User/lvgl/src/draw/lv_draw_vector.c \
../User/lvgl/src/draw/lv_image_decoder.c 

OBJS += \
./User/lvgl/src/draw/lv_draw.o \
./User/lvgl/src/draw/lv_draw_arc.o \
./User/lvgl/src/draw/lv_draw_buf.o \
./User/lvgl/src/draw/lv_draw_image.o \
./User/lvgl/src/draw/lv_draw_label.o \
./User/lvgl/src/draw/lv_draw_line.o \
./User/lvgl/src/draw/lv_draw_mask.o \
./User/lvgl/src/draw/lv_draw_rect.o \
./User/lvgl/src/draw/lv_draw_triangle.o \
./User/lvgl/src/draw/lv_draw_vector.o \
./User/lvgl/src/draw/lv_image_decoder.o 

C_DEPS += \
./User/lvgl/src/draw/lv_draw.d \
./User/lvgl/src/draw/lv_draw_arc.d \
./User/lvgl/src/draw/lv_draw_buf.d \
./User/lvgl/src/draw/lv_draw_image.d \
./User/lvgl/src/draw/lv_draw_label.d \
./User/lvgl/src/draw/lv_draw_line.d \
./User/lvgl/src/draw/lv_draw_mask.d \
./User/lvgl/src/draw/lv_draw_rect.d \
./User/lvgl/src/draw/lv_draw_triangle.d \
./User/lvgl/src/draw/lv_draw_vector.d \
./User/lvgl/src/draw/lv_image_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/%.o: ../User/lvgl/src/draw/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

