#ifndef __BOARD_H
#define __BOARD_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdint.h>

    void led_init(void);
    void led_toggle(void);
    void led_set(uint8_t set);
    void DebugInit(void);

#ifdef __cplusplus
}
#endif

#endif
