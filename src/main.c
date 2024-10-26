#include <time.h>
#include <math.h>
#include "CH59x_common.h"

#include "../src/board.h"
#include "../src/ssd1306/renderer.h"

int main(void) {
#if 1
    // Enable Internal DC-DC Power
    PWR_DCDCCfg(ENABLE);
#endif

    SetSysClock(CLK_SOURCE_PLL_60MHz);

    // Init UART - Default is UART 0 (TX-PB7, RX-PB4)
    DebugInit();

    // Blink LED in case loop ends
    led_init();
    
    led_toggle();
    DelayMs(500);
    led_toggle();
    DelayMs(500);
    led_toggle();
    DelayMs(500);
    led_toggle();

    // Initialize I2C
    I2C_Init(I2C_Mode_I2C, 400000, I2C_DutyCycle_2, I2C_Ack_Enable, I2C_AckAddr_7bit, 0x42);

    // Initialize OLED
    if(OLED_Init()){
        return 0;
    };

//    OLED_Test();

    // Init values for angles of projection
    float angleX = 0.0, angleY = 0.0, angleZ = 0.0;
    float angleIncrementX = 0.1, angleIncrementY = 0.1, angleIncrementZ = 0.1;
    float angle_bound = 2.0 * M_PI;
    float scale = 1.2;

    // Screen bounds
    int Ymax = OLED_HEIGHT / 2 - 2 - scale * 5;
    int Xmax = OLED_WIDTH / 2 - 2 - scale * 5;
    int Xmin = -Xmax, Ymin = -Ymax;

    srand(time(NULL));  // Will not give much randomization - MCU time will always be same at startup

    // Random Initial speed and position
    float posX      = (rand() % (int)(Xmax - Xmin + 1)) + Xmin;
    float posY      = (rand() % (int)(Ymax - Ymin + 1)) + Ymin;
    float velocityX = 4;
    float velocityY = 4;

    float bounceVelocity = 1.05;    // Controls acceleration after bouncing
    int maxVelocity = 5.0;            // Value for maximum velocity - Prevent runaway acceleration
    float randVelocity = rand() % maxVelocity + 1 ;

    while (1) {
        // Update New Positions
        posX += velocityX;
        posY += velocityY;
        randVelocity = rand() % (maxVelocity) + 1;

        // Check for collisions with the edges
        // Reverse direction and apply acceleration
        if (posY <= Ymin || posY >= Ymax)
        {	
            velocityY = -velocityY * bounceVelocity;
            if (velocityY >=  maxVelocity)   { velocityY =  randVelocity;};
            if (velocityY <= -maxVelocity)   { velocityY =  randVelocity;};
            posY = (posY >= Ymax) ? Ymax : Ymin;
        };

        if (posX <= Xmin || posX >= Xmax)
        {
            velocityX = -velocityX * bounceVelocity;
            
            if (velocityX >  maxVelocity)   { velocityX =  randVelocity;};            
            if (velocityX < -maxVelocity)   { velocityX =  randVelocity;};
            
            posX = (posX >= Xmax) ? Xmax : Xmin;
        };

        // Update rotation angles
        angleX += angleIncrementX;
        angleY += angleIncrementY;
        angleZ += angleIncrementZ;

        // Wrap angles to stay within 0 to 2π radians
        if (angleX >= angle_bound)   { angleX -= angle_bound; };
        if (angleY >= angle_bound)   { angleY -= angle_bound; };
        if (angleZ >= angle_bound)   { angleZ -= angle_bound; };

        // Draw the cube at the updated position
        OLED_Draw3DCube(angleX, angleY, angleZ, scale, posX, posY);

        // Control the frame rate for smoother motion
        DelayMs(1);
    }

    // If LED Starts Blinking, there's a problem
    while (1) {
        led_toggle();
        printf("abcd");
        DelayMs(1000);
    }
    return 0;
}
