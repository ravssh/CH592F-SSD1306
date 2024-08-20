################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/examples/assets/animimg001.c \
../User/lvgl/examples/assets/animimg002.c \
../User/lvgl/examples/assets/animimg003.c \
../User/lvgl/examples/assets/img_caret_down.c \
../User/lvgl/examples/assets/img_cogwheel_argb.c \
../User/lvgl/examples/assets/img_cogwheel_indexed16.c \
../User/lvgl/examples/assets/img_cogwheel_rgb.c \
../User/lvgl/examples/assets/img_hand.c \
../User/lvgl/examples/assets/img_skew_strip.c \
../User/lvgl/examples/assets/img_star.c \
../User/lvgl/examples/assets/imgbtn_left.c \
../User/lvgl/examples/assets/imgbtn_mid.c \
../User/lvgl/examples/assets/imgbtn_right.c 

OBJS += \
./User/lvgl/examples/assets/animimg001.o \
./User/lvgl/examples/assets/animimg002.o \
./User/lvgl/examples/assets/animimg003.o \
./User/lvgl/examples/assets/img_caret_down.o \
./User/lvgl/examples/assets/img_cogwheel_argb.o \
./User/lvgl/examples/assets/img_cogwheel_indexed16.o \
./User/lvgl/examples/assets/img_cogwheel_rgb.o \
./User/lvgl/examples/assets/img_hand.o \
./User/lvgl/examples/assets/img_skew_strip.o \
./User/lvgl/examples/assets/img_star.o \
./User/lvgl/examples/assets/imgbtn_left.o \
./User/lvgl/examples/assets/imgbtn_mid.o \
./User/lvgl/examples/assets/imgbtn_right.o 

C_DEPS += \
./User/lvgl/examples/assets/animimg001.d \
./User/lvgl/examples/assets/animimg002.d \
./User/lvgl/examples/assets/animimg003.d \
./User/lvgl/examples/assets/img_caret_down.d \
./User/lvgl/examples/assets/img_cogwheel_argb.d \
./User/lvgl/examples/assets/img_cogwheel_indexed16.d \
./User/lvgl/examples/assets/img_cogwheel_rgb.d \
./User/lvgl/examples/assets/img_hand.d \
./User/lvgl/examples/assets/img_skew_strip.d \
./User/lvgl/examples/assets/img_star.d \
./User/lvgl/examples/assets/imgbtn_left.d \
./User/lvgl/examples/assets/imgbtn_mid.d \
./User/lvgl/examples/assets/imgbtn_right.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/examples/assets/%.o: ../User/lvgl/examples/assets/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

