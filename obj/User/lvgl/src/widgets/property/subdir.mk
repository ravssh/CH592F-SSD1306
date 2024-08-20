################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/widgets/property/lv_image_properties.c \
../User/lvgl/src/widgets/property/lv_label_properties.c \
../User/lvgl/src/widgets/property/lv_obj_properties.c \
../User/lvgl/src/widgets/property/lv_style_properties.c 

OBJS += \
./User/lvgl/src/widgets/property/lv_image_properties.o \
./User/lvgl/src/widgets/property/lv_label_properties.o \
./User/lvgl/src/widgets/property/lv_obj_properties.o \
./User/lvgl/src/widgets/property/lv_style_properties.o 

C_DEPS += \
./User/lvgl/src/widgets/property/lv_image_properties.d \
./User/lvgl/src/widgets/property/lv_label_properties.d \
./User/lvgl/src/widgets/property/lv_obj_properties.d \
./User/lvgl/src/widgets/property/lv_style_properties.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/widgets/property/%.o: ../User/lvgl/src/widgets/property/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

