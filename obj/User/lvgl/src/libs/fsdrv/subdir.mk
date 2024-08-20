################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../User/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../User/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../User/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../User/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../User/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../User/lvgl/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./User/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./User/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./User/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./User/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./User/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./User/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./User/lvgl/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./User/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./User/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./User/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./User/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./User/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./User/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./User/lvgl/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/libs/fsdrv/%.o: ../User/lvgl/src/libs/fsdrv/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

