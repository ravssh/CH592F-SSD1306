################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/examples/others/ime/lv_example_ime_pinyin_1.c \
../User/lvgl/examples/others/ime/lv_example_ime_pinyin_2.c 

OBJS += \
./User/lvgl/examples/others/ime/lv_example_ime_pinyin_1.o \
./User/lvgl/examples/others/ime/lv_example_ime_pinyin_2.o 

C_DEPS += \
./User/lvgl/examples/others/ime/lv_example_ime_pinyin_1.d \
./User/lvgl/examples/others/ime/lv_example_ime_pinyin_2.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/examples/others/ime/%.o: ../User/lvgl/examples/others/ime/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

