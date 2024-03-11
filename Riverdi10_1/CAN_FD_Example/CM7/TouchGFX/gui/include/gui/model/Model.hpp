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

    void tick();
protected:
    ModelListener* modelListener;

    /*declare the variable*/
    int Charge_Level;
    bool ChargeStatus;
};

#endif // MODEL_HPP
