#ifndef SRC_RENDERER_H_
#define SRC_RENDERER_H_

#ifdef __cplusplus
extern "C"
{
#endif


#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include "CH59x_common.h"

// Change if needed
#define OLED_I2C_ADDR 0x3C  // SSD1306 Address
#define OLED_WIDTH 128
#define OLED_HEIGHT 32

// Display Powered with External Supply (EXTERNAL_VCC)
#ifdef EXTERNAL_VCC
#define BOARD_POWER 0x01
#else
// Display Powered with Board's Supply (SWITCH_APVCC)
#define BOARD_POWER 0x02
#endif

int OLED_Init(void);
void OLED_UpdateScreen(void);
void OLED_Clear(void);
void OLED_StartScrollLeft(uint8_t start, uint8_t stop);
void OLED_StartScrollRight(uint8_t start, uint8_t stop);
void OLED_StopScroll(void);
void OLED_dim(bool dim);
void OLED_draw_pixel(uint8_t x, uint8_t y);
void OLED_DrawLine(int x0, int y0, int x1, int y1);
void OLED_Draw3DCube(float angleX, float angleY, float angleZ, float scale, int offsetX, int offsetY);
void OLED_Test(void);


#ifdef __cplusplus
}
#endif

#endif
