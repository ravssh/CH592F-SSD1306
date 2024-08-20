################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Main.c \
../User/board.c \
../User/renderer.c 

OBJS += \
./User/Main.o \
./User/board.o \
./User/renderer.o 

C_DEPS += \
./User/Main.d \
./User/board.d \
./User/renderer.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Ofast -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=0 -I"C:\MRS_DATA\workspace\CH592F_SSD1306\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F_SSD1306\RVMSIS" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

