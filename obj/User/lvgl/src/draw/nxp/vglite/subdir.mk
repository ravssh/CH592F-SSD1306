################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.c \
../User/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../User/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.c \
../User/lvgl/src/draw/nxp/vglite/lv_vglite_path.c \
../User/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./User/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_path.o \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./User/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./User/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_path.d \
./User/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/nxp/vglite/%.o: ../User/lvgl/src/draw/nxp/vglite/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

