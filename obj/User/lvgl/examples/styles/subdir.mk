################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/examples/styles/lv_example_style_1.c \
../User/lvgl/examples/styles/lv_example_style_10.c \
../User/lvgl/examples/styles/lv_example_style_11.c \
../User/lvgl/examples/styles/lv_example_style_12.c \
../User/lvgl/examples/styles/lv_example_style_13.c \
../User/lvgl/examples/styles/lv_example_style_14.c \
../User/lvgl/examples/styles/lv_example_style_15.c \
../User/lvgl/examples/styles/lv_example_style_16.c \
../User/lvgl/examples/styles/lv_example_style_17.c \
../User/lvgl/examples/styles/lv_example_style_18.c \
../User/lvgl/examples/styles/lv_example_style_2.c \
../User/lvgl/examples/styles/lv_example_style_3.c \
../User/lvgl/examples/styles/lv_example_style_4.c \
../User/lvgl/examples/styles/lv_example_style_5.c \
../User/lvgl/examples/styles/lv_example_style_6.c \
../User/lvgl/examples/styles/lv_example_style_7.c \
../User/lvgl/examples/styles/lv_example_style_8.c \
../User/lvgl/examples/styles/lv_example_style_9.c 

OBJS += \
./User/lvgl/examples/styles/lv_example_style_1.o \
./User/lvgl/examples/styles/lv_example_style_10.o \
./User/lvgl/examples/styles/lv_example_style_11.o \
./User/lvgl/examples/styles/lv_example_style_12.o \
./User/lvgl/examples/styles/lv_example_style_13.o \
./User/lvgl/examples/styles/lv_example_style_14.o \
./User/lvgl/examples/styles/lv_example_style_15.o \
./User/lvgl/examples/styles/lv_example_style_16.o \
./User/lvgl/examples/styles/lv_example_style_17.o \
./User/lvgl/examples/styles/lv_example_style_18.o \
./User/lvgl/examples/styles/lv_example_style_2.o \
./User/lvgl/examples/styles/lv_example_style_3.o \
./User/lvgl/examples/styles/lv_example_style_4.o \
./User/lvgl/examples/styles/lv_example_style_5.o \
./User/lvgl/examples/styles/lv_example_style_6.o \
./User/lvgl/examples/styles/lv_example_style_7.o \
./User/lvgl/examples/styles/lv_example_style_8.o \
./User/lvgl/examples/styles/lv_example_style_9.o 

C_DEPS += \
./User/lvgl/examples/styles/lv_example_style_1.d \
./User/lvgl/examples/styles/lv_example_style_10.d \
./User/lvgl/examples/styles/lv_example_style_11.d \
./User/lvgl/examples/styles/lv_example_style_12.d \
./User/lvgl/examples/styles/lv_example_style_13.d \
./User/lvgl/examples/styles/lv_example_style_14.d \
./User/lvgl/examples/styles/lv_example_style_15.d \
./User/lvgl/examples/styles/lv_example_style_16.d \
./User/lvgl/examples/styles/lv_example_style_17.d \
./User/lvgl/examples/styles/lv_example_style_18.d \
./User/lvgl/examples/styles/lv_example_style_2.d \
./User/lvgl/examples/styles/lv_example_style_3.d \
./User/lvgl/examples/styles/lv_example_style_4.d \
./User/lvgl/examples/styles/lv_example_style_5.d \
./User/lvgl/examples/styles/lv_example_style_6.d \
./User/lvgl/examples/styles/lv_example_style_7.d \
./User/lvgl/examples/styles/lv_example_style_8.d \
./User/lvgl/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/examples/styles/%.o: ../User/lvgl/examples/styles/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

