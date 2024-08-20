################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_1.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_2.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_3.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_4.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_5.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_6.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_7.c \
../User/lvgl/examples/widgets/canvas/lv_example_canvas_8.c 

OBJS += \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_1.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_2.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_3.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_4.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_5.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_6.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_7.o \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_8.o 

C_DEPS += \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_1.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_2.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_3.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_4.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_5.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_6.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_7.d \
./User/lvgl/examples/widgets/canvas/lv_example_canvas_8.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/examples/widgets/canvas/%.o: ../User/lvgl/examples/widgets/canvas/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

