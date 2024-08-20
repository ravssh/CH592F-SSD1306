################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/tests/src/test_cases/draw/test_clip_corner.c \
../User/lvgl/tests/src/test_cases/draw/test_draw_blend.c \
../User/lvgl/tests/src/test_cases/draw/test_draw_label.c \
../User/lvgl/tests/src/test_cases/draw/test_draw_layer.c \
../User/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.c \
../User/lvgl/tests/src/test_cases/draw/test_draw_vector.c \
../User/lvgl/tests/src/test_cases/draw/test_image_formats.c \
../User/lvgl/tests/src/test_cases/draw/test_layer_transform.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_al88.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_i1.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_l8.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.c \
../User/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.c 

OBJS += \
./User/lvgl/tests/src/test_cases/draw/test_clip_corner.o \
./User/lvgl/tests/src/test_cases/draw/test_draw_blend.o \
./User/lvgl/tests/src/test_cases/draw/test_draw_label.o \
./User/lvgl/tests/src/test_cases/draw/test_draw_layer.o \
./User/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.o \
./User/lvgl/tests/src/test_cases/draw/test_draw_vector.o \
./User/lvgl/tests/src/test_cases/draw/test_image_formats.o \
./User/lvgl/tests/src/test_cases/draw/test_layer_transform.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_al88.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_i1.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_l8.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.o \
./User/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.o 

C_DEPS += \
./User/lvgl/tests/src/test_cases/draw/test_clip_corner.d \
./User/lvgl/tests/src/test_cases/draw/test_draw_blend.d \
./User/lvgl/tests/src/test_cases/draw/test_draw_label.d \
./User/lvgl/tests/src/test_cases/draw/test_draw_layer.d \
./User/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.d \
./User/lvgl/tests/src/test_cases/draw/test_draw_vector.d \
./User/lvgl/tests/src/test_cases/draw/test_image_formats.d \
./User/lvgl/tests/src/test_cases/draw/test_layer_transform.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_al88.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_i1.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_l8.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.d \
./User/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/tests/src/test_cases/draw/%.o: ../User/lvgl/tests/src/test_cases/draw/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

