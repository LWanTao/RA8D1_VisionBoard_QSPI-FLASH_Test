#include <rtthread.h>
#include <rtdevice.h>
#include "hal_data.h"

void hal_entry(void)
{
    rt_kprintf("\nHello RT-Thread!\n");
    fal_init();
}
