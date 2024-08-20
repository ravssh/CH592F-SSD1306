################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/core/lv_group.c \
../User/lvgl/src/core/lv_obj.c \
../User/lvgl/src/core/lv_obj_class.c \
../User/lvgl/src/core/lv_obj_draw.c \
../User/lvgl/src/core/lv_obj_event.c \
../User/lvgl/src/core/lv_obj_id_builtin.c \
../User/lvgl/src/core/lv_obj_pos.c \
../User/lvgl/src/core/lv_obj_property.c \
../User/lvgl/src/core/lv_obj_scroll.c \
../User/lvgl/src/core/lv_obj_style.c \
../User/lvgl/src/core/lv_obj_style_gen.c \
../User/lvgl/src/core/lv_obj_tree.c \
../User/lvgl/src/core/lv_refr.c 

OBJS += \
./User/lvgl/src/core/lv_group.o \
./User/lvgl/src/core/lv_obj.o \
./User/lvgl/src/core/lv_obj_class.o \
./User/lvgl/src/core/lv_obj_draw.o \
./User/lvgl/src/core/lv_obj_event.o \
./User/lvgl/src/core/lv_obj_id_builtin.o \
./User/lvgl/src/core/lv_obj_pos.o \
./User/lvgl/src/core/lv_obj_property.o \
./User/lvgl/src/core/lv_obj_scroll.o \
./User/lvgl/src/core/lv_obj_style.o \
./User/lvgl/src/core/lv_obj_style_gen.o \
./User/lvgl/src/core/lv_obj_tree.o \
./User/lvgl/src/core/lv_refr.o 

C_DEPS += \
./User/lvgl/src/core/lv_group.d \
./User/lvgl/src/core/lv_obj.d \
./User/lvgl/src/core/lv_obj_class.d \
./User/lvgl/src/core/lv_obj_draw.d \
./User/lvgl/src/core/lv_obj_event.d \
./User/lvgl/src/core/lv_obj_id_builtin.d \
./User/lvgl/src/core/lv_obj_pos.d \
./User/lvgl/src/core/lv_obj_property.d \
./User/lvgl/src/core/lv_obj_scroll.d \
./User/lvgl/src/core/lv_obj_style.d \
./User/lvgl/src/core/lv_obj_style_gen.d \
./User/lvgl/src/core/lv_obj_tree.d \
./User/lvgl/src/core/lv_refr.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/core/%.o: ../User/lvgl/src/core/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

