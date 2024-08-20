#include <time.h>
#include "CH59x_common.h"

#include "../src/board.h"
#include "../src/ssd1306/renderer.h"

int main(void) {
#if 1
    // Enable Internal DC-DC Power
    PWR_DCDCCfg(ENABLE);
#endif

    SetSysClock(CLK_SOURCE_PLL_60MHz);

    // Init UART
    // Default is UART 0 (TX-PB7, RX-PB4)
    DebugInit();

    led_init();

    // Initialize I2C
    I2C_Init(I2C_Mode_I2C, 400000, I2C_DutyCycle_2, I2C_Ack_Enable, I2C_AckAddr_7bit, 0x00);

    // Initialize OLED
    if(OLED_Init()){
        return 0;
    };

    OLED_Test();

    // Init values for angles of projection
    float angleX = 0.0, angleY = 0.0, angleZ = 0.0;
    float angleIncrementX = 0.1, angleIncrementY = 0.1, angleIncrementZ = 0.1;
    float angle_bound = 2.0 * M_PI;
    float scale = 1.2;

    // Screen bounds
    int Ymax = OLED_HEIGHT / 2 - 2 - scale * 5;
    int Xmax = OLED_WIDTH / 2 - 2 - scale * 5;
    int Xmin = -Xmax, Ymin = -Ymax;

    // Will not give much randomization - MCU time will always be same at startup
    srand(time(NULL));

    // Random Initial speed and position
    float posX = (rand() % 101) - 50;
    float posY = (rand() % (int)(Ymax - Ymin + 1)) + Ymin;
    float velocityX = ((rand() % 5) + 1) * (rand() % 2 ? 1 : -1);
    float velocityY = ((rand() % 5) + 1) * (rand() % 2 ? 1 : -1);

    float accelerationFactor = 1.05;    // Controls acceleration after bouncing
    float friction = 0.99;             // Gradually reduce speed over time
    int frictionChangeCounter = 0;

    // Value for maximum velocity - Prevent runaway acceleration
    float maxVelocity = 5.0;

    while (1) {

        // Change friction every 100 frames
        if (++frictionChangeCounter >= 100) {
            friction = 0.99f + (rand() % 4) * 0.01f;
            frictionChangeCounter = 0;
        };

        // Apply friction only if velocity is above a threshold to avoid too much slow down
        if (abs(velocityX) > 0.1) { velocityX *= friction; };
        if (abs(velocityY) > 0.1) { velocityY *= friction; };

        posX += velocityX;
        posY += velocityY;

        // Check for collisions with the edges
        if (posY <= Ymin || posY >= Ymax) {
            // Reverse direction and apply acceleration
            velocityY = -velocityY * accelerationFactor;
            posY = (posY >= Ymax) ? Ymax : Ymin;
            // Add random variation to the direction after bounce
            velocityX += (rand() % 3 - 1) * 0.5;  // Adjust X velocity slightly
        };

        if (posX <= Xmin || posX >= Xmax) {
            // Reverse horizontal direction and apply acceleration
            velocityX = -velocityX * accelerationFactor;
            posX = (posX >= 50) ? 50 : -50;
            // Add random variation to the direction after bounce
            velocityY += (rand() % 3 - 1) * 0.5;  // Adjust Y velocity slightly
        };

        // Cap the velocity to avoid it becoming too high
        if (velocityX > maxVelocity) { velocityX = maxVelocity; };
        if (velocityY > maxVelocity) { velocityY = maxVelocity; };
        if (velocityX < -maxVelocity) { velocityX = -maxVelocity; };
        if (velocityY < -maxVelocity) { velocityY = -maxVelocity; };

        // Update rotation angles
        angleX += angleIncrementX;
        angleY += angleIncrementY;
        angleZ += angleIncrementZ;

        // Wrap angles to stay within 0 to 2π radians
        if (angleX >= angle_bound) { angleX -= angle_bound; }
        if (angleY >= angle_bound) { angleY -= angle_bound; }
        if (angleZ >= angle_bound) { angleZ -= angle_bound; }

        // Draw the cube at the updated position
        OLED_Draw3DCube(angleX, angleY, angleZ, scale, posX, posY);

        // Control the frame rate for smoother motion
        DelayMs(1);
    }


    // If LED Starts Blinking, there's a problem
    while (1) {
        led_toggle();
        DelayMs(1000);
    }
    return 0;
}
