#ifndef MODEL_HPP
#define MODEL_HPP

class ModelListener;

class Model
{
public:
    Model();

    void bind(ModelListener* listener)
    {
        modelListener = listener;
    }

    /* Tick of TouchGFX Function */
    /**
      * @brief  Function implementing of Tick.
      * @param  argument: Not used
      * @retval None
      */
    void tick();
protected:
    ModelListener* modelListener;

    unsigned int BatteryLevel;
    bool BatteryState;
};

#endif // MODEL_HPP
