/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

uint8_t dir=0; /*Direction for either charging or discharging*/
uint8_t state=0; /*State of the battery i.e. Charging or discharging*/
uint8_t level=0; /*Level of the battery (0-100%)*/


/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for VideoTask */
osThreadId_t VideoTaskHandle;
const osThreadAttr_t VideoTask_attributes = {
  .name = "VideoTask",
  .stack_size = 4096 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for TouchGFXTask */
osThreadId_t TouchGFXTaskHandle;
const osThreadAttr_t TouchGFXTask_attributes = {
  .name = "TouchGFXTask",
  .stack_size = 8192 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for BatteryControl */
osThreadId_t BatteryControlHandle;
const osThreadAttr_t BatteryControl_attributes = {
  .name = "BatteryControl",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for BatteryStateQueue */
osMessageQueueId_t BatteryStateQueueHandle;
const osMessageQueueAttr_t BatteryStateQueue_attributes = {
  .name = "BatteryStateQueue"
};
/* Definitions for BatteryLevelQueue */
osMessageQueueId_t BatteryLevelQueueHandle;
const osMessageQueueAttr_t BatteryLevelQueue_attributes = {
  .name = "BatteryLevelQueue"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
extern void videoTaskFunc(void *argument);
extern void TouchGFX_Task(void *argument);
void StartBatteryControl(void *argument);

extern void MX_USB_HOST_Init(void);
void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* Hook prototypes */
void vApplicationIdleHook(void);
void vApplicationStackOverflowHook(xTaskHandle xTask, signed char *pcTaskName);

/* USER CODE BEGIN 2 */
void vApplicationIdleHook( void )
{
   /* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
   to 1 in FreeRTOSConfig.h. It will be called on each iteration of the idle
   task. It is essential that code added to this hook function never attempts
   to block in any way (for example, call xQueueReceive() with a block time
   specified, or call vTaskDelay()). If the application makes use of the
   vTaskDelete() API function (as this demo application does) then it is also
   important that vApplicationIdleHook() is permitted to return to its calling
   function, because it is the responsibility of the idle task to clean up
   memory allocated by the kernel to any task that has since been deleted. */
}
/* USER CODE END 2 */

/* USER CODE BEGIN 4 */
void vApplicationStackOverflowHook(xTaskHandle xTask, signed char *pcTaskName)
{
   /* Run time stack overflow checking is performed if
   configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2. This hook function is
   called if a stack overflow is detected. */
}
/* USER CODE END 4 */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of BatteryStateQueue */
  BatteryStateQueueHandle = osMessageQueueNew (1, sizeof(uint8_t), &BatteryStateQueue_attributes);

  /* creation of BatteryLevelQueue */
  BatteryLevelQueueHandle = osMessageQueueNew (1, sizeof(uint8_t), &BatteryLevelQueue_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of VideoTask */
  VideoTaskHandle = osThreadNew(videoTaskFunc, NULL, &VideoTask_attributes);

  /* creation of TouchGFXTask */
  TouchGFXTaskHandle = osThreadNew(TouchGFX_Task, NULL, &TouchGFXTask_attributes);

  /* creation of BatteryControl */
  BatteryControlHandle = osThreadNew(StartBatteryControl, NULL, &BatteryControl_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* init code for USB_HOST */
  MX_USB_HOST_Init();
  /* USER CODE BEGIN StartDefaultTask */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Header_StartBatteryControl */
/**
* @brief Function implementing the BatteryControl thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartBatteryControl */
void StartBatteryControl(void *argument)
{
  /* USER CODE BEGIN StartBatteryControl */
  /* Infinite loop */
  for(;;)
  {
	  if (dir ==0) /*Charging*/
	  {
		  level++; /*Increase the level of charge*/
		  state=1; /*Set state to charging*/

		  /*Toggle the LED to indicate the charging process */
		  HAL_GPIO_TogglePin(USR_LED_GPIO_Port, USR_LED_Pin);
		  if(level==100) /*Once the battery is full, change to discharging*/
		  {
			  dir=1;
		  }
	  }

	  if (dir ==1) /*Discharging*/
	  {
		  level--; /*Decrease the level of charge*/

		  state=0; /*Set state to discharging*/

		  /*Turn off the LED*/
		  HAL_GPIO_WritePin(USR_LED_GPIO_Port, USR_LED_Pin,GPIO_PIN_RESET );

		  if(level==0) /*Once the battery is depleted, change to charging*/
		  {
			  dir=0;
		  }
	  }

	  /*Send both values to their respective queue*/

	  /*Send the battery state */
	  osMessageQueuePut(BatteryStateQueueHandle, &state, 0, 0);

	  /*Send the battery level state*/
	  osMessageQueuePut(BatteryLevelQueueHandle,&level,0,0);


	  /*Repeat this every 200ms*/
    osDelay(200);
  }
  /* USER CODE END StartBatteryControl */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

