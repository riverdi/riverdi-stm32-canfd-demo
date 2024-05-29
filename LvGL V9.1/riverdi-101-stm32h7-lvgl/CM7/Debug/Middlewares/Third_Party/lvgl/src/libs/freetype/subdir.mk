################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.c \
../Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.c \
../Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.c \
../Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.c \
../Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.o \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.o \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.o \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.o \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.d \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.d \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.d \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.d \
./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/libs/freetype/%.o Middlewares/Third_Party/lvgl/src/libs/freetype/%.su Middlewares/Third_Party/lvgl/src/libs/freetype/%.cyclo: ../Middlewares/Third_Party/lvgl/src/libs/freetype/%.c Middlewares/Third_Party/lvgl/src/libs/freetype/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-libs-2f-freetype

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-libs-2f-freetype:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.cyclo ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.d ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.o ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype.su ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.cyclo ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.d ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.o ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_glyph.su ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.cyclo ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.d ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.o ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_image.su ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.cyclo ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.d ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.o ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_freetype_outline.su ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.cyclo ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.d ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.o ./Middlewares/Third_Party/lvgl/src/libs/freetype/lv_ftsystem.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-libs-2f-freetype

