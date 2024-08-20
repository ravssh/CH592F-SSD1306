################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.c \
../User/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.c \
../User/lvgl/src/stdlib/rtthread/lv_string_rtthread.c 

OBJS += \
./User/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.o \
./User/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.o \
./User/lvgl/src/stdlib/rtthread/lv_string_rtthread.o 

C_DEPS += \
./User/lvgl/src/stdlib/rtthread/lv_mem_core_rtthread.d \
./User/lvgl/src/stdlib/rtthread/lv_sprintf_rtthread.d \
./User/lvgl/src/stdlib/rtthread/lv_string_rtthread.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/stdlib/rtthread/%.o: ../User/lvgl/src/stdlib/rtthread/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

