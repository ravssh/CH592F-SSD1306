# SSD1306 Driver for CH592F
This driver is a basic implementation to interface SSD1306 OLED Display with CH592F MCU over I2C protocol.

A Cube is rendered on the screen after the test is complete. This cube is then bounced indefinitely over the edges of the display with varying velocities.

 ## Demo

OLED Test followed by Cube Render: 

https://github.com/user-attachments/assets/55bf6b5a-3785-45b9-87ac-11023e2fadab


## Usage
1)  [Install GNU RISC-V Embedded ToolChain](https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack)

2)  Clone the Repo
``` bash
  git clone https://github.com/ravssh/CH592F-SSD1306
```

3)  Open  `/src/ssd1306/renderer.h` & change display resolution & power configuration.

4)  Build It -
``` bash
  make clean
  make
```

5)  [Get WCHISP Flashing Tool](https://github.com/ch32-rs/wchisp)

6)  Connect the Display to MCU according to the table below

     |   Pin Number  |   OLED Pin    |
     | ------------- | ------------- |
     |      5V       |      VCC      |
     |      GND      |      GND      |
     |      B15      |      SCK      |
     |      B14      |      SDA      |

7)  Hold the boot button on CH592F and connect it to your PC.

8)  Run wchisp info to check if it's detected. We can flash it now.
``` bash
  make flash
```


### Note
This is only a basic implementation. The code is not polished and may cause some unexpected behaviour. There's no support to display fonts or images. Check out fbiego's implementation for LVGL support [here](fbiego/ch592f-lvgl).


### Acknowledgements
 - [openwch/ch592](https://github.com/openwch/ch592)
 - [Suniasuta/CH592_Makefile_Template](https://github.com/Suniasuta/CH592_Makefile_Template)
 - [adafruit/Adafruit_SSD1306](https://github.com/adafruit/Adafruit_SSD1306)
 - [Matiasus/SSD1306](https://github.com/Matiasus/SSD1306)
 - [Rotation_matrix (Wikipedia)](https://en.wikipedia.org/wiki/Rotation_matrix)
