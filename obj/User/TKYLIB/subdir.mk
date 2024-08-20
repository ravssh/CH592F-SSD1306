################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/shah_/Downloads/ch592-main/ch592-main/EVT/EXAM/TOUCH/TKYLIB/Touch.c 

OBJS += \
./User/TKYLIB/Touch.o 

C_DEPS += \
./User/TKYLIB/Touch.d 


# Each subdirectory must supply rules for building sources it contributes
User/TKYLIB/Touch.o: C:/Users/shah_/Downloads/ch592-main/ch592-main/EVT/EXAM/TOUCH/TKYLIB/Touch.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Ofast -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=0 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

