#include "../src/board.h"

#include "CH59x_common.h"

void DebugInit(void)
{
#ifdef  DEBUG
#if DEBUG == Debug_UART0
    GPIOB_SetBits(GPIO_Pin_7);
    GPIOB_ModeCfg(GPIO_Pin_7, GPIO_ModeOut_PP_5mA);
    UART0_DefInit();
#elif DEBUG == Debug_UART1
    GPIOPinRemap(ENABLE, RB_PIN_UART1);
    GPIOB_SetBits(GPIO_Pin_13);
    GPIOB_ModeCfg(GPIO_Pin_13, GPIO_ModeOut_PP_5mA);
    UART1_DefInit();
#elif DEBUG == Debug_UART2
    GPIOPinRemap(ENABLE, RB_PIN_UART2);
    GPIOB_SetBits(GPIO_Pin_23);
    GPIOB_ModeCfg(GPIO_Pin_23, GPIO_ModeOut_PP_5mA);
    UART2_DefInit();
#elif DEBUG == Debug_UART3
    GPIOPinRemap(ENABLE, RB_PIN_UART3);
    GPIOB_SetBits(GPIO_Pin_21);
    GPIOB_ModeCfg(GPIO_Pin_21, GPIO_ModeOut_PP_5mA);
    UART3_DefInit();
#endif
#endif
}

void led_init(void)
{
    GPIOA_SetBits(GPIO_Pin_8);
    GPIOA_ModeCfg(GPIO_Pin_8, GPIO_ModeOut_PP_5mA);
}

void led_toggle(void)
{
    GPIOA_InverseBits(GPIO_Pin_8);
}

void led_set(uint8_t set)
{
    if (set)
        GPIOA_ResetBits(GPIO_Pin_8);
    else
        GPIOA_SetBits(GPIO_Pin_8);
}
