################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/misc/cache/lv_cache.c \
../User/lvgl/src/misc/cache/lv_cache_entry.c \
../User/lvgl/src/misc/cache/lv_cache_lru_rb.c \
../User/lvgl/src/misc/cache/lv_image_cache.c \
../User/lvgl/src/misc/cache/lv_image_header_cache.c 

OBJS += \
./User/lvgl/src/misc/cache/lv_cache.o \
./User/lvgl/src/misc/cache/lv_cache_entry.o \
./User/lvgl/src/misc/cache/lv_cache_lru_rb.o \
./User/lvgl/src/misc/cache/lv_image_cache.o \
./User/lvgl/src/misc/cache/lv_image_header_cache.o 

C_DEPS += \
./User/lvgl/src/misc/cache/lv_cache.d \
./User/lvgl/src/misc/cache/lv_cache_entry.d \
./User/lvgl/src/misc/cache/lv_cache_lru_rb.d \
./User/lvgl/src/misc/cache/lv_image_cache.d \
./User/lvgl/src/misc/cache/lv_image_header_cache.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/misc/cache/%.o: ../User/lvgl/src/misc/cache/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

