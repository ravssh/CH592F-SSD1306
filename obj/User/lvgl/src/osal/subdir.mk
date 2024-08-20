################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/osal/lv_cmsis_rtos2.c \
../User/lvgl/src/osal/lv_freertos.c \
../User/lvgl/src/osal/lv_mqx.c \
../User/lvgl/src/osal/lv_os.c \
../User/lvgl/src/osal/lv_os_none.c \
../User/lvgl/src/osal/lv_pthread.c \
../User/lvgl/src/osal/lv_rtthread.c \
../User/lvgl/src/osal/lv_windows.c 

OBJS += \
./User/lvgl/src/osal/lv_cmsis_rtos2.o \
./User/lvgl/src/osal/lv_freertos.o \
./User/lvgl/src/osal/lv_mqx.o \
./User/lvgl/src/osal/lv_os.o \
./User/lvgl/src/osal/lv_os_none.o \
./User/lvgl/src/osal/lv_pthread.o \
./User/lvgl/src/osal/lv_rtthread.o \
./User/lvgl/src/osal/lv_windows.o 

C_DEPS += \
./User/lvgl/src/osal/lv_cmsis_rtos2.d \
./User/lvgl/src/osal/lv_freertos.d \
./User/lvgl/src/osal/lv_mqx.d \
./User/lvgl/src/osal/lv_os.d \
./User/lvgl/src/osal/lv_os_none.d \
./User/lvgl/src/osal/lv_pthread.d \
./User/lvgl/src/osal/lv_rtthread.d \
./User/lvgl/src/osal/lv_windows.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/osal/%.o: ../User/lvgl/src/osal/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

