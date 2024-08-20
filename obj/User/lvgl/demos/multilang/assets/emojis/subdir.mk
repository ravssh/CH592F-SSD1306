################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_books.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.c \
../User/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.c 

OBJS += \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_books.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.o \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.o 

C_DEPS += \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_books.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.d \
./User/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.d 


# Each subdirectory must supply rules for building sources it contributes
User/lvgl/demos/multilang/assets/emojis/%.o: ../User/lvgl/demos/multilang/assets/emojis/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -DDEBUG=1 -I"C:\MRS_DATA\workspace\CH592F\StdPeriphDriver\inc" -I"C:\MRS_DATA\workspace\CH592F\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

