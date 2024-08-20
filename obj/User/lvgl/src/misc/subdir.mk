################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/src/misc/lv_anim.c \
../User/lvgl/src/misc/lv_anim_timeline.c \
../User/lvgl/src/misc/lv_area.c \
../User/lvgl/src/misc/lv_array.c \
../User/lvgl/src/misc/lv_async.c \
../User/lvgl/src/misc/lv_bidi.c \
../User/lvgl/src/misc/lv_color.c \
../User/lvgl/src/misc/lv_color_op.c \
../User/lvgl/src/misc/lv_event.c \
../User/lvgl/src/misc/lv_fs.c \
../User/lvgl/src/misc/lv_ll.c \
../User/lvgl/src/misc/lv_log.c \
../User/lvgl/src/misc/lv_lru.c \
../User/lvgl/src/misc/lv_math.c \
../User/lvgl/src/misc/lv_matrix.c \
../User/lvgl/src/misc/lv_palette.c \
../User/lvgl/src/misc/lv_profiler_builtin.c \
../User/lvgl/src/misc/lv_rb.c \
../User/lvgl/src/misc/lv_style.c \
../User/lvgl/src/misc/lv_style_gen.c \
../User/lvgl/src/misc/lv_templ.c \
../User/lvgl/src/misc/lv_text.c \
../User/lvgl/src/misc/lv_text_ap.c \
../User/lvgl/src/misc/lv_timer.c \
../User/lvgl/src/misc/lv_utils.c 

OBJS += \
./User/lvgl/src/misc/lv_anim.o \
./User/lvgl/src/misc/lv_anim_timeline.o \
./User/lvgl/src/misc/lv_area.o \
./User/lvgl/src/misc/lv_array.o \
./User/lvgl/src/misc/lv_async.o \
./User/lvgl/src/misc/lv_bidi.o \
./User/lvgl/src/misc/lv_color.o \
./User/lvgl/src/misc/lv_color_op.o \
./User/lvgl/src/misc/lv_event.o \
./User/lvgl/src/misc/lv_fs.o \
./User/lvgl/src/misc/lv_ll.o \
./User/lvgl/src/misc/lv_log.o \
./User/lvgl/src/misc/lv_lru.o \
./User/lvgl/src/misc/lv_math.o \
./User/lvgl/src/misc/lv_matrix.o \
./User/lvgl/src/misc/lv_palette.o \
./User/lvgl/src/misc/lv_profiler_builtin.o \
./User/lvgl/src/misc/lv_rb.o \
./User/lvgl/src/misc/lv_style.o \
./User/lvgl/src/misc/lv_style_gen.o \
./User/lvgl/src/misc/lv_templ.o \
./User/lvgl/src/misc/lv_text.o \
./User/lvgl/src/misc/lv_text_ap.o \
./User/lvgl/src/misc/lv_timer.o \
./User/lvgl/src/misc/lv_utils.o 

C_DEPS += \
./User/lvgl/src/misc/lv_anim.d \
./User/lvgl/src/misc/lv_anim_timeline.d \
./User/lvgl/src/misc/lv_area.d \
./User/lvgl/src/misc/lv_array.d \
./User/lvgl/src/misc/lv_async.d \
./User/lvgl/src/misc/lv_bidi.d \
./User/lvgl/src/misc/lv_color.d \
./User/lvgl/src/misc/lv_color_op.d \
./User/lvgl/src/misc/lv_event.d \
./User/lvgl/src/misc/lv_fs.d \
./User/lvgl/src/misc/lv_ll.d \
./User/lvgl/src/misc/lv_log.d \
./User/lvgl/src/misc/lv_lru.d \
./User/lvgl/src/misc/lv_math.d \
./User/lvgl/src/misc/lv_matrix.d \
./User/lvgl/src/misc/lv_palette.d \
./User/lvgl/src/misc/lv_profiler_builtin.d \
./User/lvgl/src/misc/lv_rb.d \
./User/lvgl/src/misc/lv_style.d \
./User/lvgl/src/misc/lv_style_gen.d \
./User/lvgl/src/misc/lv_templ.d \
./User/lvgl/src/misc/lv_text.d \
./User/lvgl/src/misc/lv_text_ap.d \
./User/lvgl/src/misc/lv_timer.d \
./User/lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/src/misc/%.o: ../User/lvgl/src/misc/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

