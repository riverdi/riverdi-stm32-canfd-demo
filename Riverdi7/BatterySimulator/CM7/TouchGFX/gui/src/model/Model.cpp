/**
  ******************************************************************************
  * File Name          : Model.cpp
  * Description        : Code for Model applications
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


#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>


/* Include the cmsis_os2.h and main.h header files*/
#include "cmsis_os2.h"
#include "main.h"

/* Declare the queues as external.*/

extern "C"
{
	/* Battery state queue.*/
	extern osMessageQueueId_t BatteryStateQueueHandle;
	/* Battery level queue.*/
	extern osMessageQueueId_t BatteryLevelQueueHandle;
}


/* TocuhGFX ModelListener Function */
/**
  * @brief  Function implementing of ModelListener.
  * @param  argument: Not used
  * @retval None
  */

Model::Model() : modelListener(0)
{

}

/* Tick of TouchGFX Function */
/**
  * @brief  Function implementing of Tick.
  * @param  argument: Not used
  * @retval None
  */
void Model::tick()
{

	/* Check if there is new data in the queue*/
	if(osMessageQueueGetCount(BatteryStateQueueHandle)>0)
	{
		/* Get the new data in the queue, store in their respective variable and send the new data to the model listener
		 * The variables have been defined in Model.hpp
		 * The functions have been defined in /ModelListener.hpp
		 * */
		if(osMessageQueueGet(BatteryStateQueueHandle, &BatteryState, 0, 0)==osOK)
		{
			/* Push the new Data to SetState*/
			modelListener->SetState(BatteryState);
		}
	}

	/* Check if there is new data in the queue*/
	if(osMessageQueueGetCount(BatteryLevelQueueHandle)>0)
	{
		if(osMessageQueueGet(BatteryLevelQueueHandle, &BatteryLevel, 0, 0)==osOK)
		{
			/* Push the new Data to SetLevel*/
			modelListener->SetLevel(BatteryLevel);
		}
	}


}
