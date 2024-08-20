################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_1.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_10.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_11.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_12.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_13.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_14.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_15.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_16.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_17.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_18.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_19.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_2.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_22.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_25.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_3.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_4.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_5.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_6.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_7.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_8.c \
../User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_9.c 

OBJS += \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_1.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_10.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_11.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_12.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_13.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_14.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_15.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_16.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_17.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_18.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_19.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_2.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_22.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_25.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_3.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_4.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_5.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_6.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_7.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_8.o \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_9.o 

C_DEPS += \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_1.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_10.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_11.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_12.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_13.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_14.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_15.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_16.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_17.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_18.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_19.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_2.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_22.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_25.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_3.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_4.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_5.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_6.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_7.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_8.d \
./User/lvgl/demos/multilang/assets/avatars/img_multilang_avatar_9.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/demos/multilang/assets/avatars/%.o: ../User/lvgl/demos/multilang/assets/avatars/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

