################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.c \
../Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.c \
../Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.c \
../Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.c \
../Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.c \
../Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.c 

OBJS += \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.o \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.o \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.o \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.o \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.o \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.d \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.d \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.d \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.d \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.d \
./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/demos/flex_layout/%.o Middlewares/Third_Party/lvgl/demos/flex_layout/%.su Middlewares/Third_Party/lvgl/demos/flex_layout/%.cyclo: ../Middlewares/Third_Party/lvgl/demos/flex_layout/%.c Middlewares/Third_Party/lvgl/demos/flex_layout/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-flex_layout

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-flex_layout:
	-$(RM) ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.cyclo ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.d ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.o ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.su ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.cyclo ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.d ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.o ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_flex_loader.su ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.cyclo ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.d ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.o ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_main.su ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.cyclo ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.d ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.o ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view.su ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.cyclo ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.d ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.o ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_child_node.su ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.cyclo ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.d ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.o ./Middlewares/Third_Party/lvgl/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-flex_layout

