# “Vision Board 创客营活动”第一阶段测试记录

- 使用软件：
  - RT-Thread Studio 2.2.7 -> 工程创建与编辑
  - FSP Smart Configurator 23.10.0 (FSP Version: 5.1.0) -> 配置和管理 RA8D1 芯片
  - MobaXterm Personal Edition V24.0 -> 串口终端
- 测试内容：QSPI-FLASH（fal+文件系统）
- 测试对象：8 MB QSPI-FLASH（型号：W25Q64JV）

## 1 环境搭建

> 主要参考 [RT-Thread 文档中心](https://www.rt-thread.org/document/site/#/rt-thread-version/rt-thread-standard/hw-board/ra8d1-vision-board/ra8d1-vision-board?id=%e7%8e%af%e5%a2%83%e6%90%ad%e5%bb%ba)以及[官方创建的腾讯在线文档](https://docs.qq.com/doc/DY2hkbVdiSGV1S3JM)

### 1.1 遇到的问题及解决方案

在官方文档的指引下，安装过程本是一路顺风，最后却卡在了 RT-Thread Studio 的 `.exe` 安装步骤。

- 错误现象：双击或右键管理员打开 `.exe` 文件均无反应
- 解决办法：本来以为需要研究用户组策略等问题，但最后无意间发现，只需要**右键 `.exe` 文件进入属性页，勾选“解除锁定”复选框即可**…

![alt text](/docs/image.png)

## 2 启用 FAL 组件并同时调用 片上&外挂 Flash

> 初次接触 RT-Thread，进度比大家慢，因此也获得了参考前辈们经验的机会，在此表达敬意！
>
> 参考资料：
>
> 1. [RT-Thread 使用FAL多字节读写FLASH](https://blog.csdn.net/zhengnianli/article/details/106684335)（作者：[嵌入式大杂烩](https://blog.csdn.net/zhengnianli)）
> 2. [RT-Thread FAL 组件使用](https://www.jianshu.com/p/b3fe425082fa)（作者：[tang_jia](https://www.jianshu.com/u/505a242ff76a)）
> 3. [W25Q64JV 官方手册](https://atta.szlcsc.com/upload/public/pdf/source/20191218/C179171_92C5C91D0324539EDD8F1160D2E79C0F.pdf)
> 4. [【Vision Board创客营连载体验】RA8D1 Vision Board上的SPI实践](https://bbs.elecfans.com/jishu_2425388_1_1.html)（作者：[大菠萝Alpha](https://bbs.elecfans.com/user/4709755/)）

### 2.1 配置 RT-Thread Settings

1. `首页`：Drivers 启用串口、Pin、SPI、SFUD：
    ![alt text](image-1.png)
2. `组件页`：设置如下：
    ![alt text](image-2.png)
    ![alt text](image-3.png)
3. `硬件页`：启用 Onchip FLASH、SPI1 BUS：
    ![alt text](image-4.png)

### 2.2 配置 RASC

1. `Stacks`：启用 g_spi1 SPI(r_spi_b)、g_flash FLASH(g_flash_hp) 栈：
   ![alt text](image-5.png)
   这里需要注意，两个栈的具体设置需要与代码对齐：
   ![alt text](image-7.png)
   ![alt text](image-8.png)
2. `Pins`：配置 SPI1 相关引脚  
   *（注：也是因为这里 SPI0 的引脚设置不好，前面才选择启用 SPI1 BUS，原因不详，若有了解、请指教！）*
   ![alt text](image-6.png)
3. 最后创建相关文件即可！RASC 光荣退休！（不是）
   ![alt text](image-9.png)

### 2.3 代码编写

1. 我这里将 SPI 初始化行为独立成了一个 `spi_init.c` 文件存放在 `/src` 路径：

   ```c
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
   ```

2. 然后在 `/board/ports/fal_cfg.h` 文件中定义`设备表`与`分区表`，我这里将 BootLoader 和 APP 放在片上 Flash，外挂 Flash 单独分区：

    ```c
    #ifndef _FAL_CFG_H_
    #define _FAL_CFG_H_

    #include "hal_data.h"

    extern const struct fal_flash_dev _onchip_flash_hp0;
    extern const struct fal_flash_dev _onchip_flash_hp1;
    extern struct fal_flash_dev nor_flash0;

    /* flash device table */
    #define FAL_FLASH_DEV_TABLE             \
    {                                       \
        &_onchip_flash_hp0,                  \
        &_onchip_flash_hp1,                  \
        &nor_flash0,                        \
    }
    /* ====================== Partition Configuration ========================== */
    #ifdef FAL_PART_HAS_TABLE_CFG
    /** partition table, The chip flash partition is defined in "\ra\fsp\src\bsp\mcu\ra6m4\bsp_feature.h".
    * More details can be found in the RA6M4 Group User Manual: Hardware section 47 Flash memory.*/
    #define FAL_PART_TABLE                                                                                                      \
    {                                                                                                                           \
        {FAL_PART_MAGIC_WROD, "boot", "onchip_flash_hp0", 0, BSP_FEATURE_FLASH_HP_CF_REGION0_SIZE, 0},                          \
        {FAL_PART_MAGIC_WROD, "app", "onchip_flash_hp1", 0, (BSP_ROM_SIZE_BYTES - BSP_FEATURE_FLASH_HP_CF_REGION0_SIZE), 0},    \
        {FAL_PART_MAGIC_WROD, "disk", "W25Q64", 0, (BSP_DATA_FLASH_SIZE_BYTES), 0},                             \
    }
    #endif /* FAL_PART_HAS_TABLE_CFG */
    #endif /* _FAL_CFG_H_ */
    ```

3. 最后在 `/src/hal_entry.c` 内进行 fal 的初始化即可：

    ```c
    #include <rtthread.h>
    #include <rtdevice.h>
    #include "hal_data.h"

    void hal_entry(void)
    {
        rt_kprintf("\nHello RT-Thread!\n");
        fal_init();
    }
    ```

### 2.4 效果展示

> 这里不理解为何会有一个报错，明明 `fal probe` 能探到，且 `list device` 也有 `W25Q64`…如果搞懂了我会实时更新文章！

![alt text](image-10.png)

## 3 文件系统的搭建

未完待续，敬请期待！
