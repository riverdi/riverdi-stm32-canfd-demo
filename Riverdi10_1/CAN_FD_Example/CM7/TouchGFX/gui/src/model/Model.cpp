#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>

/*Include freeRTOS header file and main.h header*/

#include "cmsis_os2.h"
#include "main.h"

/*Declare the queues as external*/

extern "C"
{
	extern osMessageQueueId_t ChargeStateQueueHandle;
	extern osMessageQueueId_t ChargeLevelQueueHandle;
	extern osMessageQueueId_t FaultQueueHandle;
}


/*Initialize both variable to zero*/

Model::Model() : modelListener(0)
{

}

void Model::tick()
{
	/*Check if there is new message for the charge level*/
	if (osMessageQueueGetCount(ChargeLevelQueueHandle)>0)
	{
		/*Read the message*/
		if(osMessageQueueGet(ChargeLevelQueueHandle, &Charge_Level, 0, 0)==osOK)
		{
			/*Send the data to the model listener*/
			modelListener->setChargeLevel(Charge_Level);
		}
	}

	/*local variable to handle the charge state*/
	static bool charge;

	/*Check if there is new message for the charge Status*/
	if (osMessageQueueGetCount(ChargeStateQueueHandle)>0)
	{
		/*Read the message*/
		if(osMessageQueueGet(ChargeStateQueueHandle, &charge, 0, 0)==osOK)
		{
			if(charge==1)
			{
				ChargeStatus=true;
			}
			else
			{
				ChargeStatus=false;
			}

			/*Send the data to the model listener*/
			modelListener->setChargeState(ChargeStatus);
		}
	}



	/*Check if there is an fault in the queue*/
	if(osMessageQueueGetCount(FaultQueueHandle)>0)
	{
		if(osMessageQueueGet(FaultQueueHandle, &FaultState, 0, 0)==osOK)
		{
			modelListener->SetFault(FaultState);
		}
	}


}
