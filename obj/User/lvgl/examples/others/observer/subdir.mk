################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/examples/others/observer/lv_example_observer_1.c \
../User/lvgl/examples/others/observer/lv_example_observer_2.c \
../User/lvgl/examples/others/observer/lv_example_observer_3.c \
../User/lvgl/examples/others/observer/lv_example_observer_4.c \
../User/lvgl/examples/others/observer/lv_example_observer_5.c \
../User/lvgl/examples/others/observer/lv_example_observer_6.c 

OBJS += \
./User/lvgl/examples/others/observer/lv_example_observer_1.o \
./User/lvgl/examples/others/observer/lv_example_observer_2.o \
./User/lvgl/examples/others/observer/lv_example_observer_3.o \
./User/lvgl/examples/others/observer/lv_example_observer_4.o \
./User/lvgl/examples/others/observer/lv_example_observer_5.o \
./User/lvgl/examples/others/observer/lv_example_observer_6.o 

C_DEPS += \
./User/lvgl/examples/others/observer/lv_example_observer_1.d \
./User/lvgl/examples/others/observer/lv_example_observer_2.d \
./User/lvgl/examples/others/observer/lv_example_observer_3.d \
./User/lvgl/examples/others/observer/lv_example_observer_4.d \
./User/lvgl/examples/others/observer/lv_example_observer_5.d \
./User/lvgl/examples/others/observer/lv_example_observer_6.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/examples/others/observer/%.o: ../User/lvgl/examples/others/observer/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

