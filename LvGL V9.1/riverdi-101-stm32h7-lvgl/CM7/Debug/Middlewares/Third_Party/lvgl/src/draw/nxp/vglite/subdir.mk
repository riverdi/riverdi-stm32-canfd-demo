################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/%.o Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/%.su Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/%.cyclo: ../Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/%.c Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_buf.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_path.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

