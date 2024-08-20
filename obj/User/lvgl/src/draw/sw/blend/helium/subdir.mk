################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../User/lvgl/src/draw/sw/blend/helium/lv_blend_helium.S 

OBJS += \
./User/lvgl/src/draw/sw/blend/helium/lv_blend_helium.o 

S_UPPER_DEPS += \
./User/lvgl/src/draw/sw/blend/helium/lv_blend_helium.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/draw/sw/blend/helium/%.o: ../User/lvgl/src/draw/sw/blend/helium/%.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

