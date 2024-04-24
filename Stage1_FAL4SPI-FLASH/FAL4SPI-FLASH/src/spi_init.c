#include <rtthread.h>
#include <rtdevice.h>
#include "hal_data.h"

#define SPI_NAME "spi10"
#define CS_PIN BSP_IO_PORT_04_PIN_13

static struct rt_spi_device *spi_dev;

static int rt_spi_device_init(void){
    struct rt_spi_configuration cfg;

    rt_hw_spi_device_attach("spi1", SPI_NAME, CS_PIN);
    cfg.data_width = 8;
    cfg.max_hz = 1 * 1000 * 1000;
    spi_dev = (struct rt_spi_device *)rt_device_find(SPI_NAME);

    if (RT_NULL == spi_dev){
        rt_kprintf("Can't find spi device named %s", SPI_NAME);
        return -RT_ERROR;
    }
    rt_spi_configure(spi_dev, &cfg);
    return RT_EOK;
}
INIT_APP_EXPORT(rt_spi_device_init);
