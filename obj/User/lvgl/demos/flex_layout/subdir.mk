################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.c \
../User/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.c \
../User/lvgl/demos/flex_layout/lv_demo_flex_layout_main.c \
../User/lvgl/demos/flex_layout/lv_demo_flex_layout_view.c \
../User/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.c \
../User/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.c 

OBJS += \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.o \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.o \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_main.o \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_view.o \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.o \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.o 

C_DEPS += \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.d \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.d \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_main.d \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_view.d \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.d \
./User/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/demos/flex_layout/%.o: ../User/lvgl/demos/flex_layout/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

