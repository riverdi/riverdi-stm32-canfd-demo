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

uint8_t ChargeState=0;
uint8_t ChargeLevel=0;

/*For the simulation, a dir variable is used
 * to simulate charging and discharging
 * */

uint8_t dir=0;



/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TouchGFXTask */
osThreadId_t TouchGFXTaskHandle;
const osThreadAttr_t TouchGFXTask_attributes = {
  .name = "TouchGFXTask",
  .stack_size = 8192 * 4,
  .priority = (osPriority_t) osPriorityNormal1,
};
/* Definitions for VideoTask */
osThreadId_t VideoTaskHandle;
const osThreadAttr_t VideoTask_attributes = {
  .name = "VideoTask",
  .stack_size = 4096 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for ChargerLevelTas */
osThreadId_t ChargerLevelTasHandle;
const osThreadAttr_t ChargerLevelTas_attributes = {
  .name = "ChargerLevelTas",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for ChargeStatuseTa */
osThreadId_t ChargeStatuseTaHandle;
const osThreadAttr_t ChargeStatuseTa_attributes = {
  .name = "ChargeStatuseTa",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for ChargeStateQueue */
osMessageQueueId_t ChargeStateQueueHandle;
const osMessageQueueAttr_t ChargeStateQueue_attributes = {
  .name = "ChargeStateQueue"
};
/* Definitions for ChargeLevelQueue */
osMessageQueueId_t ChargeLevelQueueHandle;
const osMessageQueueAttr_t ChargeLevelQueue_attributes = {
  .name = "ChargeLevelQueue"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
extern void TouchGFX_Task(void *argument);
extern void videoTaskFunc(void *argument);
void StartChargerLevelTask(void *argument);
void StartChargeStatuseTask(void *argument);

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
  /* creation of ChargeStateQueue */
  ChargeStateQueueHandle = osMessageQueueNew (2, sizeof(uint8_t), &ChargeStateQueue_attributes);

  /* creation of ChargeLevelQueue */
  ChargeLevelQueueHandle = osMessageQueueNew (2, sizeof(uint8_t), &ChargeLevelQueue_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of TouchGFXTask */
  TouchGFXTaskHandle = osThreadNew(TouchGFX_Task, NULL, &TouchGFXTask_attributes);

  /* creation of VideoTask */
  VideoTaskHandle = osThreadNew(videoTaskFunc, NULL, &VideoTask_attributes);

  /* creation of ChargerLevelTas */
  ChargerLevelTasHandle = osThreadNew(StartChargerLevelTask, NULL, &ChargerLevelTas_attributes);

  /* creation of ChargeStatuseTa */
  ChargeStatuseTaHandle = osThreadNew(StartChargeStatuseTask, NULL, &ChargeStatuseTa_attributes);

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

/* USER CODE BEGIN Header_StartChargerLevelTask */
/**
* @brief Function implementing the ChargerLevelTas thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartChargerLevelTask */
void StartChargerLevelTask(void *argument)
{
  /* USER CODE BEGIN StartChargerLevelTask */
/* Infinite loop */
	for(;;)
	{

		/*Check the direction variable
		 * 0-> meaning increase the battery level
		 * 1-> meaning decrease the battery level
		 * */
		if(dir ==0)
		{
			ChargeLevel++;
		}
		else
		{
			ChargeLevel--;
		}

		/*Change the direction when charge level hits either
		 * 0 or 1.
		 * */
		if(ChargeLevel==100)
		{
			dir=1;
		}
		if (ChargeLevel==0)
		{
			dir=0;
		}

		/*Put the Charge level into the queue*/

		osMessageQueuePut(ChargeLevelQueueHandle, &ChargeLevel, 0, 0);

		/*This task shall be called each 100 milliseconds
		 * Don't use HAL_Delay since it is blocking delay
		 * and it will waste CPU cycles.
		 *
		 * Using osDelay will notify the freeRTOS to put this task
		 * into blocked status until the delay period has elapsed
		 * (won't be executed unlike HAL_Delay).
		 * */
		osDelay(100);
	}
  /* USER CODE END StartChargerLevelTask */
}

/* USER CODE BEGIN Header_StartChargeStatuseTask */
/**
* @brief Function implementing the ChargeStatuseTa thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartChargeStatuseTask */
void StartChargeStatuseTask(void *argument)
{
  /* USER CODE BEGIN StartChargeStatuseTask */
	/* Infinite loop */
	for(;;)
	{
		/*Store Current push button (USR BTN 1) state*/
		ChargeState=HAL_GPIO_ReadPin(USR_BTN_1_GPIO_Port, USR_BTN_1_Pin);

		/*Push the current push button status to the queue*/
		osMessageQueuePut(ChargeStateQueueHandle, &ChargeState, 0, 0);

		/*Call this task each 50ms*/
		osDelay(50);
	}
  /* USER CODE END StartChargeStatuseTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */
