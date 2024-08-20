################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../User/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../User/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../User/lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../User/lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

OBJS += \
./User/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./User/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./User/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./User/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 

C_DEPS += \
./User/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./User/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./User/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./User/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./User/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/nxp/pxp/%.o: ../User/lvgl/src/draw/nxp/pxp/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

