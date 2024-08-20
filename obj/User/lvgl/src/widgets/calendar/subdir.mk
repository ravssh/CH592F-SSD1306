################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/widgets/calendar/lv_calendar.c \
../User/lvgl/src/widgets/calendar/lv_calendar_chinese.c \
../User/lvgl/src/widgets/calendar/lv_calendar_header_arrow.c \
../User/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.c 

OBJS += \
./User/lvgl/src/widgets/calendar/lv_calendar.o \
./User/lvgl/src/widgets/calendar/lv_calendar_chinese.o \
./User/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o \
./User/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o 

C_DEPS += \
./User/lvgl/src/widgets/calendar/lv_calendar.d \
./User/lvgl/src/widgets/calendar/lv_calendar_chinese.d \
./User/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d \
./User/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/widgets/calendar/%.o: ../User/lvgl/src/widgets/calendar/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

