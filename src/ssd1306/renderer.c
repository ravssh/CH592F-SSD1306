#include "renderer.h"

const float original_vertices[8][3] = {
    {-1.0, -1.0, -1.0},
    { 1.0, -1.0, -1.0},
    { 1.0,  1.0, -1.0},
    {-1.0,  1.0, -1.0},
    {-1.0, -1.0,  1.0},
    { 1.0, -1.0,  1.0},
    { 1.0,  1.0,  1.0},
    {-1.0,  1.0,  1.0}
};

const int edges[12][2] = {
    {0, 1}, {1, 2}, {2, 3}, {3, 0},
    {4, 5}, {5, 6}, {6, 7}, {7, 4},
    {0, 4}, {1, 5}, {2, 6}, {3, 7}
};

static uint8_t* buffer = NULL;
static uint8_t page = 0, bit = 0, current_byte = 0;

static int projected[8][2] = {0};
static float vertices[8][3] = {0.0};

static void I2C_WriteCommand(uint8_t command) {
    I2C_GenerateSTART(ENABLE);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
    I2C_Send7bitAddress(OLED_I2C_ADDR << 1, I2C_Direction_Transmitter);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
    I2C_SendData(0x00);     // Command mode
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
    I2C_SendData(command);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
    I2C_GenerateSTOP(ENABLE);
}

static void I2C_WriteData(uint8_t data) {
    I2C_GenerateSTART(ENABLE);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
    I2C_Send7bitAddress(OLED_I2C_ADDR << 1, I2C_Direction_Transmitter);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
    I2C_SendData(0x40);    // Data mode
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
    I2C_SendData(data);
    while (!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
    I2C_GenerateSTOP(ENABLE);
}

int OLED_Init(void) {
    if ((!buffer) && !(buffer = (uint8_t *)malloc(OLED_WIDTH * ((OLED_HEIGHT + 7) / 8)))) {
        return 1;
    }

    uint8_t vccstate = BOARD_POWER;
    uint8_t contrast = 0x8F;
    uint8_t comPins = 0x02;

    I2C_WriteCommand(0xAE);         // Display OFF
    I2C_WriteCommand(0xD5);         // Set Display Clock Divide Ratio / OSC Frequency
    I2C_WriteCommand(0x80);         // Default setting
    I2C_WriteCommand(0xA8);         // Set Multiplex Ratio
    I2C_WriteCommand(OLED_HEIGHT - 1);

    I2C_WriteCommand(0xD3);         // Set Display Offset
    I2C_WriteCommand(0x00);         // No offset
    I2C_WriteCommand(0x40 | 0x00 ); // Set Display Start Line
    I2C_WriteCommand(0x8D);         // Set Charge Pump Setting
    I2C_WriteCommand((vccstate == 0x01) ? 0x10 : 0x14); // Enable Charge Pump

    I2C_WriteCommand(0x20);         // Set Memory Addressing Mode
    I2C_WriteCommand(0x00);         // Page Addressing Mode
    I2C_WriteCommand(0xA0 | 0x1);   // Set Segment Re-map
    I2C_WriteCommand(0xC8);         // Set COM Output Scan Direction

    if ((OLED_WIDTH == 128) && (OLED_HEIGHT == 32)) {
       comPins = 0x02;
       contrast = 0x8F;
     } else if ((OLED_WIDTH == 128) && (OLED_HEIGHT == 64)) {
       comPins = 0x12;
       contrast = (vccstate == 0x01) ? 0x9F : 0xCF;
     } else if ((OLED_WIDTH == 96) && (OLED_HEIGHT == 16)) {
       comPins = 0x2;
       contrast = (vccstate == 0x01) ? 0x10 : 0xAF;
     } else {
       // Any other resolution
     }

    I2C_WriteCommand(0xDA);         // Set COM Pins Hardware Configuration
    I2C_WriteCommand(comPins);
    I2C_WriteCommand(0x81);         // Contrast Control
    I2C_WriteCommand(contrast);

    I2C_WriteCommand(0xD9);         // Set Pre-charge Period
    I2C_WriteCommand((vccstate == 0x01) ? 0x22 : 0xF1);
    I2C_WriteCommand(0xDB);         // Set VCOMH De-select Level
    I2C_WriteCommand(0x40);
    I2C_WriteCommand(0xA4);         // Entire Display ON
    I2C_WriteCommand(0xA6);         // Set Normal Display
    I2C_WriteCommand(0x2E);         // Deactivate Scroll
    I2C_WriteCommand(0xAF);         // Display ON
    return 0;
}

void OLED_UpdateScreen(void) {
    for (uint8_t page = 0; page < (OLED_HEIGHT / 8); page++) {
        I2C_WriteCommand(0xB0 + page); // Set page address
        I2C_WriteCommand(0x00);        // Set lower column address
        I2C_WriteCommand(0x10);        // Set higher column address

        for (uint8_t col = 0; col < OLED_WIDTH; col++) {
            I2C_WriteData(buffer[page * OLED_WIDTH + col]);
        }
    }
}

void OLED_Clear(void) {
    // No direct way to clear RAM of SSD1306
    // Clear the buffer & update it manually
    memset(buffer, 0x00, OLED_WIDTH * ((OLED_HEIGHT + 7) / 8));
    OLED_UpdateScreen();
}

void OLED_StartScrollLeft(uint8_t start, uint8_t stop) {
    I2C_WriteCommand(0x2E);     // Deactivate any previous scroll
    I2C_WriteCommand(0x26);     // Horizontal Scroll Setup
    I2C_WriteCommand(0x00);     // Dummy byte
    I2C_WriteCommand(start);    // Start page address
    I2C_WriteCommand(0x00);     // Scroll speed (e.g., 5 frames)
    I2C_WriteCommand(stop);     // Stop page address
    I2C_WriteCommand(0x00);     // Dummy byte
    I2C_WriteCommand(0xFF);     // Dummy byte
    I2C_WriteCommand(0x2F);     // Activate scroll
}

void OLED_StartScrollRight(uint8_t start, uint8_t stop) {
    I2C_WriteCommand(0x2E);     // Deactivate any previous scroll
    I2C_WriteCommand(0x27);     // Horizontal Scroll Setup
    I2C_WriteCommand(0x00);     // Dummy byte
    I2C_WriteCommand(start);    // Start page address
    I2C_WriteCommand(0x00);     // Scroll speed (e.g., 5 frames)
    I2C_WriteCommand(stop);     // Stop page address
    I2C_WriteCommand(0x00);     // Dummy byte
    I2C_WriteCommand(0xFF);     // Dummy byte
    I2C_WriteCommand(0x2F);     // Activate scroll
}

void OLED_StopScroll(void)
{
    I2C_WriteCommand(0x2E);     // Deactivate scroll
}

void OLED_dim(bool dim){
    uint8_t contrast = 0x8F;
    I2C_WriteCommand(0x81);     // Contrast Control
    I2C_WriteCommand(dim ? 0: contrast);
    DelayUs(1);                 // Without a delay, display bugs out
}

void OLED_draw_pixel(uint8_t x, uint8_t y) {
    if ((x >= OLED_WIDTH) || (y >= OLED_HEIGHT)) {
        return; // Out of bounds
    }

    bit = y % 8;  // Calculate the bit position within the page
    page = y / 8; // Calculate the page based on y-coordinate

    // Read the current byte from the buffer
    current_byte = buffer[page * OLED_WIDTH + x];

    // Update the pixel in the buffer
    current_byte |= (1 << bit); // Set the bit to draw the pixel

    buffer[page * OLED_WIDTH + x] = current_byte;
}

static void RotateX(float angle, float* y, float* z) {
    float cosa = cos(angle);
    float sina = sin(angle);
    float y_new = *y * cosa - *z * sina;
    float z_new = *y * sina + *z * cosa;
    *y = y_new;
    *z = z_new;
}

static void RotateY(float angle, float* x, float* z) {
    float cosa = cos(angle);
    float sina = sin(angle);
    float x_new = *x * cosa + *z * sina;
    float z_new = -*x * sina + *z * cosa;
    *x = x_new;
    *z = z_new;
}

static void RotateZ(float angle, float* x, float* y) {
    float cosa = cos(angle);
    float sina = sin(angle);
    float x_new = *x * cosa - *y * sina;
    float y_new = *x * sina + *y * cosa;
    *x = x_new;
    *y = y_new;
}

void OLED_DrawLine(int x0, int y0, int x1, int y1) {
    int dx = abs(x1 - x0), sx = x0 < x1 ? 1 : -1;
    int dy = -abs(y1 - y0), sy = y0 < y1 ? 1 : -1;
    int err = dx + dy, e2;

    while (1) {
        OLED_draw_pixel(x0, y0);
        if (x0 == x1 && y0 == y1) { break; };
        e2 = 2 * err;
        if (e2 >= dy) { err += dy; x0 += sx; };
        if (e2 <= dx) { err += dx; y0 += sy; };
    }
}

static void Project3DTo2D(float x, float y, float z, int* x2d, int* y2d, int offsetX, int offsetY) {
//    scale = 20.0;
//    viewer_distance = 4.0;
    *x2d = (int)(20.0 * x / (z + 4.0)) + OLED_WIDTH / 2 + offsetX;
    *y2d = (int)(20.0 * y / (z + 4.0)) + OLED_HEIGHT / 2 + offsetY;
}

void OLED_Draw3DCube(float angleX, float angleY, float angleZ, float scale, int offsetX, int offsetY) {

    memcpy(vertices, original_vertices, sizeof(original_vertices));
    memset(projected, 0, 8*2);

    for (int i = 0; i < 8; i++) {
        // Scale vertices
        vertices[i][0] *= scale;
        vertices[i][1] *= scale;
        vertices[i][2] *= scale;

        // Apply rotations
        RotateX(angleX, &vertices[i][1], &vertices[i][2]);
        RotateY(angleY, &vertices[i][0], &vertices[i][2]);
        RotateZ(angleZ, &vertices[i][0], &vertices[i][1]);

        // Project 3D coordinates to 2D with offsets
        Project3DTo2D(vertices[i][0], vertices[i][1], vertices[i][2], &projected[i][0], &projected[i][1], offsetX, offsetY);
    }

    memset(buffer, 0x00, OLED_WIDTH * ((OLED_HEIGHT + 7) / 8)); // Clear the buffer before drawing new frame

    // Project each edge to buffer
    for (int i = 0; i < 12; i++) {
        OLED_DrawLine(projected[edges[i][0]][0], projected[edges[i][0]][1], projected[edges[i][1]][0], projected[edges[i][1]][1]);
    }

    OLED_UpdateScreen();
}

void OLED_Test(void){
    memset(buffer, 0x00, OLED_WIDTH * ((OLED_HEIGHT + 7) / 8));
    OLED_UpdateScreen();

    OLED_Clear();
    for (uint16_t i = 0; i < OLED_WIDTH * ((OLED_HEIGHT + 7) / 8); i++) {
        if(i % 2 == 0)  {buffer[i] = 0x00;}
        else            {buffer[i] = 0xAA;}
    }
    OLED_UpdateScreen();
    DelayMs(2000);

    memset(buffer, 0xFF, OLED_WIDTH * ((OLED_HEIGHT + 7) / 8));
    OLED_UpdateScreen();
    DelayMs(2000);
    OLED_Clear();

    // Draw sine wave
    memset(buffer, 0x00, OLED_WIDTH * ((OLED_HEIGHT + 7) / 8));
    float frequency = 0.1;
    float amplitude = OLED_HEIGHT / 4;
    float offset = OLED_HEIGHT / 2;
    float angle = 0.0;
    int y,page,bit;
    for (int x = 0; x < OLED_WIDTH; x++) {
        // Calculate the y position of the sine wave
        angle = x * frequency * 2 * M_PI; // Convert x to angle
        y = (int)(amplitude * sin(angle) + offset);

        if (y >= 0 && y < OLED_HEIGHT) {
            page = y / 8; // Page in the buffer
            bit = y % 8;  // Bit position within the page

            // Set the pixel in the buffer
            buffer[page * OLED_WIDTH + x] |= (1 << bit);
        }
    }

    OLED_UpdateScreen();
    DelayMs(2000);

    OLED_StartScrollLeft(0x00, 0x03);
    DelayMs(5000);
    OLED_StopScroll();
}

