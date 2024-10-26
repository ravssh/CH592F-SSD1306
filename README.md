# SSD1306 Driver for CH592F
This driver is a basic implementation to interface SSD1306 OLED Display with CH592F MCU over I2C protocol.

A Cube is rendedered on the screen after the Test is complete. The cube's render is bounced indefinately over the edges of the display.

 ## Demo

OLED Test followed by Bouncing Cube-

https://github.com/user-attachments/assets/55bf6b5a-3785-45b9-87ac-11023e2fadab



## Usage
1) [Install GNU RISC-V Embedded ToolChain](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack)

2) Clone the Repo `https://github.com/ravssh/CH592F-SSD1306`

3) Open  `/src/ssd1306/renderer.h` . Change Display Resolution & Power Configuration.

4) Run `make clean` followed by `make` inside your terminal.

5) [Get WCHISP Flashing Tool](https://github.com/ch32-rs/wchisp)

6) Connect the Display to MCU according to the table below

|   Pin Number  |   OLED Pin    |
| ------------- | ------------- |
|      5V       |      VCC      |
|      GND      |      GND      |
|      B15      |      SCK      |
|      B14      |      SDA      |

7) Hold the boot button on CH592F and connect to your PC.

8) WCHISP will recognize the device. Run `make flash`


### Note
This is a basic implementation of my understanding of rendering in Embedded Systems. The code is not polished and may cause say unexpected behaviour.
There are no high-level Features to display text or fonts. Check out fbiego's implementation for lvgl support [here](fbiego/ch592f-lvgl).


### Similar Projects
 - [adafruit/Adafruit_SSD1306](https://github.com/adafruit/Adafruit_SSD1306)
 - [Matiasus/SSD1306](https://github.com/Matiasus/SSD1306)
 - [fbiego/ch592f-lvgl](https://github.com/fbiego/ch592f-lvgl)
