################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/stdlib/clib/lv_mem_core_clib.c \
../User/lvgl/src/stdlib/clib/lv_sprintf_clib.c \
../User/lvgl/src/stdlib/clib/lv_string_clib.c 

OBJS += \
./User/lvgl/src/stdlib/clib/lv_mem_core_clib.o \
./User/lvgl/src/stdlib/clib/lv_sprintf_clib.o \
./User/lvgl/src/stdlib/clib/lv_string_clib.o 

C_DEPS += \
./User/lvgl/src/stdlib/clib/lv_mem_core_clib.d \
./User/lvgl/src/stdlib/clib/lv_sprintf_clib.d \
./User/lvgl/src/stdlib/clib/lv_string_clib.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/stdlib/clib/%.o: ../User/lvgl/src/stdlib/clib/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

