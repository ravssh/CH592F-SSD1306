################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_A1_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_A2_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_A4_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_A8_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_ARGB8888_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_I1_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_I2_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_I4_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_I8_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_L8_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB565A8_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB565_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB888_LZ4_align1.c \
../User/lvgl/tests/test_images/stride_align1/LZ4/test_XRGB8888_LZ4_align1.c 

OBJS += \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A1_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A2_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A4_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A8_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_ARGB8888_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I1_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I2_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I4_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I8_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_L8_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB565A8_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB565_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB888_LZ4_align1.o \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_XRGB8888_LZ4_align1.o 

C_DEPS += \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A1_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A2_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A4_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_A8_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_ARGB8888_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I1_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I2_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I4_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_I8_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_L8_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB565A8_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB565_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_RGB888_LZ4_align1.d \
./User/lvgl/tests/test_images/stride_align1/LZ4/test_XRGB8888_LZ4_align1.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/tests/test_images/stride_align1/LZ4/%.o: ../User/lvgl/tests/test_images/stride_align1/LZ4/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

