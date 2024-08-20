
# SSD1306 Driver for CH592F
This driver is a basic implementation to interface SSD1306 OLED Display with CH592F MCU over I2C protocol.

A Cube is rendedered on the screen after the Test is complete. The cube's render is bounced indefinately over the edges of the display.
 

## Features:
- Plot line between 2 points
- Draw individual pixels
- Clear screen
- Scroll Left / Right


## Usage
1) [Install Mount River Studio](http://www.mounriver.com/download)

2) Import CH592F_SSD1306.wvproj inside MountRiver Studio.

3) Open  `/src/ssd1306/renderer.h` . Change Display Resolution & Power Configuration.

4) Build the project.
5) [Install WCHISPTool_Setup_exe](https://www.wch-ic.com/downloads/WCHISPTool_Setup_exe.html)
6) Connect the Display to MCU according to the table below

|   Pin Number  |   OLED Pin    |
| ------------- | ------------- |
|      5V       |      VCC      |
|      GND      |      GND      |
|      B15      |      SCK      |
|      B14      |      SDA      |

7) Hold the boot button on CH592F and connect to your PC.
8) WCHISPTool will recognize the device. Flash it.


### Note
I did not find any suitable driver to get things running. This is a basic implementation of my understanding of rendering in Embedded Systems. The code is not polished and may cause say unexpected behaviour.
There are no high-level Features to display text or fonts.


### Acknowledgements
 - [adafruit/Adafruit_SSD1306](https://github.com/adafruit/Adafruit_SSD1306)
 - [Matiasus/SSD1306](https://github.com/Matiasus/SSD1306)
