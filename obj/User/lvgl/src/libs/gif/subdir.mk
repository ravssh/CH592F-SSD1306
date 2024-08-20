################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/libs/gif/gifdec.c \
../User/lvgl/src/libs/gif/lv_gif.c 

OBJS += \
./User/lvgl/src/libs/gif/gifdec.o \
./User/lvgl/src/libs/gif/lv_gif.o 

C_DEPS += \
./User/lvgl/src/libs/gif/gifdec.d \
./User/lvgl/src/libs/gif/lv_gif.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/libs/gif/%.o: ../User/lvgl/src/libs/gif/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

