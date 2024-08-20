################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/tests/src/test_cases/libs/test_barcode.c \
../User/lvgl/tests/src/test_cases/libs/test_bin_decoder.c \
../User/lvgl/tests/src/test_cases/libs/test_bmp.c \
../User/lvgl/tests/src/test_cases/libs/test_font_stress.c \
../User/lvgl/tests/src/test_cases/libs/test_freetype.c \
../User/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.c \
../User/lvgl/tests/src/test_cases/libs/test_libpng.c \
../User/lvgl/tests/src/test_cases/libs/test_lodepng.c \
../User/lvgl/tests/src/test_cases/libs/test_memmove.c \
../User/lvgl/tests/src/test_cases/libs/test_qrcode.c \
../User/lvgl/tests/src/test_cases/libs/test_tiny_ttf.c \
../User/lvgl/tests/src/test_cases/libs/test_tjpgd.c 

OBJS += \
./User/lvgl/tests/src/test_cases/libs/test_barcode.o \
./User/lvgl/tests/src/test_cases/libs/test_bin_decoder.o \
./User/lvgl/tests/src/test_cases/libs/test_bmp.o \
./User/lvgl/tests/src/test_cases/libs/test_font_stress.o \
./User/lvgl/tests/src/test_cases/libs/test_freetype.o \
./User/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o \
./User/lvgl/tests/src/test_cases/libs/test_libpng.o \
./User/lvgl/tests/src/test_cases/libs/test_lodepng.o \
./User/lvgl/tests/src/test_cases/libs/test_memmove.o \
./User/lvgl/tests/src/test_cases/libs/test_qrcode.o \
./User/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o \
./User/lvgl/tests/src/test_cases/libs/test_tjpgd.o 

C_DEPS += \
./User/lvgl/tests/src/test_cases/libs/test_barcode.d \
./User/lvgl/tests/src/test_cases/libs/test_bin_decoder.d \
./User/lvgl/tests/src/test_cases/libs/test_bmp.d \
./User/lvgl/tests/src/test_cases/libs/test_font_stress.d \
./User/lvgl/tests/src/test_cases/libs/test_freetype.d \
./User/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d \
./User/lvgl/tests/src/test_cases/libs/test_libpng.d \
./User/lvgl/tests/src/test_cases/libs/test_lodepng.d \
./User/lvgl/tests/src/test_cases/libs/test_memmove.d \
./User/lvgl/tests/src/test_cases/libs/test_qrcode.d \
./User/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d \
./User/lvgl/tests/src/test_cases/libs/test_tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/tests/src/test_cases/libs/%.o: ../User/lvgl/tests/src/test_cases/libs/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

