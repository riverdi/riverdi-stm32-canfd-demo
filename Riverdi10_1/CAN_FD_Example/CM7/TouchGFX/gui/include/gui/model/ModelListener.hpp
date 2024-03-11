#ifndef MODELLISTENER_HPP
#define MODELLISTENER_HPP

#include <gui/model/Model.hpp>

class ModelListener
{
public:

   ModelListener() : model(0) {}
    
    ~ModelListener() {}

    void bind(Model* m)
    {
        model = m;
    }

    /*Declare both functions*/
    virtual void setChargeLevel(int value);
    virtual void setChargeState(bool state);
protected:
    Model* model;

};

#endif // MODELLISTENER_HPP
