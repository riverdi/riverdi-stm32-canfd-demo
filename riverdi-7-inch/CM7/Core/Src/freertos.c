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
#include "fdcan.h"
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





extern FDCAN_HandleTypeDef hfdcan1; /*!< Instant of FDCANHandleTypedef*/

FDCAN_TxHeaderTypeDef   TxHeader; /*!< Tx Header of CAN-FD*/
FDCAN_RxHeaderTypeDef   RxHeader; /*!< Rx Header of CAN-FD*/
uint8_t               TxData[2];  /*!< Tx data  buffer*/
uint8_t               RxData[2];  /*!< Rx data  buffer*/


uint8_t dir=0;  /*!< Direction for either charging or discharging*/


uint8_t state=0; /*!< State of the battery i.e. Charging or discharging*/


uint8_t level=0; /*!< Level of the battery (0-100%)*/


uint8_t CAN_FD_State=0; /*!< CAN-FD Status (Success or Failed)*/


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
/* Definitions for CANFD_Task */
osThreadId_t CANFD_TaskHandle;
const osThreadAttr_t CANFD_Task_attributes = {
  .name = "CANFD_Task",
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
/* Definitions for CANFD_BatteryState_Queue */
osMessageQueueId_t CANFD_BatteryState_QueueHandle;
const osMessageQueueAttr_t CANFD_BatteryState_Queue_attributes = {
  .name = "CANFD_BatteryState_Queue"
};
/* Definitions for CANFD_BatteryLevelQueue */
osMessageQueueId_t CANFD_BatteryLevelQueueHandle;
const osMessageQueueAttr_t CANFD_BatteryLevelQueue_attributes = {
  .name = "CANFD_BatteryLevelQueue"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
extern void videoTaskFunc(void *argument);
extern void TouchGFX_Task(void *argument);
void StartBatteryControl(void *argument);
void StartCANFD_Task(void *argument);

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

  /* creation of CANFD_BatteryState_Queue */
  CANFD_BatteryState_QueueHandle = osMessageQueueNew (1, sizeof(uint8_t), &CANFD_BatteryState_Queue_attributes);

  /* creation of CANFD_BatteryLevelQueue */
  CANFD_BatteryLevelQueueHandle = osMessageQueueNew (2, sizeof(uint8_t), &CANFD_BatteryLevelQueue_attributes);

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

  /* creation of CANFD_Task */
  CANFD_TaskHandle = osThreadNew(StartCANFD_Task, NULL, &CANFD_Task_attributes);

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

	  osMessageQueuePut(CANFD_BatteryState_QueueHandle, &state, 0, 0);

	  /*Send the battery level state*/
	  osMessageQueuePut(BatteryLevelQueueHandle,&level,0,0);

	  /*Send the CAN-FD state */
	  osMessageQueuePut(CANFD_BatteryLevelQueueHandle, &level, 0, 0);

	  /*Repeat this every 200ms*/
    osDelay(200);
  }
  /* USER CODE END StartBatteryControl */
}

/* USER CODE BEGIN Header_StartCANFD_Task */
/**
* @brief Function implementing the CANFD_Task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartCANFD_Task */
void StartCANFD_Task(void *argument)
{
  /* USER CODE BEGIN StartCANFD_Task */
  /* Infinite loop */
  for(;;)
  {
	  /*If there is new data for the battery state (charging/discharging)*/
	  if(osMessageQueueGetCount(CANFD_BatteryState_QueueHandle)>0)
	  {
		  /*Get the new value and store it in first index of the data buffer*/
		  if(osMessageQueueGet(CANFD_BatteryState_QueueHandle,&TxData[0], 0, 0)==osOK)
		  {

		  }
	  }

	  /*If there is new data for the charging level*/
	  if(osMessageQueueGetCount(CANFD_BatteryLevelQueueHandle)>0)
	  {
		  /*Get the new value and store it in second index of the data buffer*/
		  if(osMessageQueueGet(CANFD_BatteryLevelQueueHandle,&TxData[1], 0, 0)==osOK)
		  {

		  }
	  }

	  /*Push the data to CAN-FD FIFO*/
	  if (HAL_FDCAN_AddMessageToTxFifoQ(&hfdcan1, &TxHeader, TxData)!= HAL_OK)
	  {
		  CAN_FD_State=1;
	  }
	  else
	  {
		  CAN_FD_State=0;
	  }

	  /*Delay by 10ms*/
    osDelay(10);
  }
  /* USER CODE END StartCANFD_Task */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo0ITs)
{
  if((RxFifo0ITs & FDCAN_IT_RX_FIFO0_NEW_MESSAGE) != RESET)
  {
    /* Retreive Rx messages from RX FIFO0 */
    if (HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO0, &RxHeader, RxData) != HAL_OK)
    {
    /* Reception Error */
    Error_Handler();
    }
    if (HAL_FDCAN_ActivateNotification(hfdcan, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0) != HAL_OK)
    {
      /* Notification Error */
      Error_Handler();
    }
  }
}
/* USER CODE END Application */

