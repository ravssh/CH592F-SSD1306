################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/libs/freetype/lv_freetype.c \
../User/lvgl/src/libs/freetype/lv_freetype_glyph.c \
../User/lvgl/src/libs/freetype/lv_freetype_image.c \
../User/lvgl/src/libs/freetype/lv_freetype_outline.c \
../User/lvgl/src/libs/freetype/lv_ftsystem.c 

OBJS += \
./User/lvgl/src/libs/freetype/lv_freetype.o \
./User/lvgl/src/libs/freetype/lv_freetype_glyph.o \
./User/lvgl/src/libs/freetype/lv_freetype_image.o \
./User/lvgl/src/libs/freetype/lv_freetype_outline.o \
./User/lvgl/src/libs/freetype/lv_ftsystem.o 

C_DEPS += \
./User/lvgl/src/libs/freetype/lv_freetype.d \
./User/lvgl/src/libs/freetype/lv_freetype_glyph.d \
./User/lvgl/src/libs/freetype/lv_freetype_image.d \
./User/lvgl/src/libs/freetype/lv_freetype_outline.d \
./User/lvgl/src/libs/freetype/lv_ftsystem.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/libs/freetype/%.o: ../User/lvgl/src/libs/freetype/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

