################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c 

OBJS += \
./User/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.o 

C_DEPS += \
./User/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/demos/keypad_encoder/%.o: ../User/lvgl/demos/keypad_encoder/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
