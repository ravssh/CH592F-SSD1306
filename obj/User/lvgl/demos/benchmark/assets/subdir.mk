################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.c \
../User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c \
../User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c \
../User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.c \
../User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.c \
../User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.c 

OBJS += \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.o \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.o \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o \
./User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.o \
./User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.o \
./User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.o 

C_DEPS += \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.d \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.d \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./User/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d \
./User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.d \
./User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.d \
./User/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/demos/benchmark/assets/%.o: ../User/lvgl/demos/benchmark/assets/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

