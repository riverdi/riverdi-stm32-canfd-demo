################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/core/lv_group.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_class.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_event.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_property.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_style.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.c \
../Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.c \
../Middlewares/Third_Party/lvgl/src/core/lv_refr.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/core/lv_group.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_class.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_event.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_property.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_style.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.o \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.o \
./Middlewares/Third_Party/lvgl/src/core/lv_refr.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/core/lv_group.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_class.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_event.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_property.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_style.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.d \
./Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.d \
./Middlewares/Third_Party/lvgl/src/core/lv_refr.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/core/%.o Middlewares/Third_Party/lvgl/src/core/%.su Middlewares/Third_Party/lvgl/src/core/%.cyclo: ../Middlewares/Third_Party/lvgl/src/core/%.c Middlewares/Third_Party/lvgl/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-core

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-core:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/core/lv_group.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_group.d ./Middlewares/Third_Party/lvgl/src/core/lv_group.o ./Middlewares/Third_Party/lvgl/src/core/lv_group.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_class.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_class.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_class.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_class.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_draw.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_event.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_event.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_event.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_event.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_id_builtin.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_pos.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_property.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_property.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_property.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_property.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_scroll.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_style_gen.su ./Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.d ./Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.o ./Middlewares/Third_Party/lvgl/src/core/lv_obj_tree.su ./Middlewares/Third_Party/lvgl/src/core/lv_refr.cyclo ./Middlewares/Third_Party/lvgl/src/core/lv_refr.d ./Middlewares/Third_Party/lvgl/src/core/lv_refr.o ./Middlewares/Third_Party/lvgl/src/core/lv_refr.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-core

