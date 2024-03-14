#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>


/*Include the cmsis_os2.h and main.h header files*/
#include "cmsis_os2.h"
#include "main.h"

/*Declare the queues as external.*/

extern "C"
{
	/*Battery state queue.*/
	extern osMessageQueueId_t BatteryStateQueueHandle;
	/*Battery level queue.*/
	extern osMessageQueueId_t BatteryLevelQueueHandle;
}




Model::Model() : modelListener(0)
{

}

void Model::tick()
{

	/*Check if there is new data in the queue*/
	if(osMessageQueueGetCount(BatteryStateQueueHandle)>0)
	{
		/*Get the new data in the queue, store in their respective variable and send the new data to the model listener
		 * The variables have been defined in Model.hpp
		 * The functions have been defined in /ModelListener.hpp
		 * */
		if(osMessageQueueGet(BatteryStateQueueHandle, &BatteryState, 0, 0)==osOK)
		{
			modelListener->SetState(BatteryState);
		}
	}

	if(osMessageQueueGetCount(BatteryLevelQueueHandle)>0)
	{
		if(osMessageQueueGet(BatteryLevelQueueHandle, &BatteryLevel, 0, 0)==osOK)
		{
			modelListener->SetLevel(BatteryLevel);
		}
	}


}
