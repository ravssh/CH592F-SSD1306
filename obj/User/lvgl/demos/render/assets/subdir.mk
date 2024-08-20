################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/demos/render/assets/img_render_arc_bg.c \
../User/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.c \
../User/lvgl/demos/render/assets/img_render_lvgl_logo_i1.c \
../User/lvgl/demos/render/assets/img_render_lvgl_logo_l8.c \
../User/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.c \
../User/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.c \
../User/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.c 

OBJS += \
./User/lvgl/demos/render/assets/img_render_arc_bg.o \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.o \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_i1.o \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_l8.o \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.o \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.o \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.o 

C_DEPS += \
./User/lvgl/demos/render/assets/img_render_arc_bg.d \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_argb8888.d \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_i1.d \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_l8.d \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_rgb565.d \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_rgb888.d \
./User/lvgl/demos/render/assets/img_render_lvgl_logo_xrgb8888.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/demos/render/assets/%.o: ../User/lvgl/demos/render/assets/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

