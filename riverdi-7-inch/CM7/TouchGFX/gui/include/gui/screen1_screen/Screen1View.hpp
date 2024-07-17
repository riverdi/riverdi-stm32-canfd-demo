#ifndef SCREEN1VIEW_HPP
#define SCREEN1VIEW_HPP

#include <gui_generated/screen1_screen/Screen1ViewBase.hpp>
#include <gui/screen1_screen/Screen1Presenter.hpp>

class Screen1View : public Screen1ViewBase
{
public:
    Screen1View();
    virtual ~Screen1View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();

    /*  setState Function  */
    /**
      * @brief  Function implementing of SetState.
      * @param  argument: bool for state
      * @retval None
      */
    virtual void SetState(bool state);


    /* setLevel Function  */
    /**
      * @brief  Function implementing of SetLevel.
      * @param  argument: percentage of the battery.
      * @retval None
      */
    virtual void SetLevel(int level);
protected:
};

#endif // SCREEN1VIEW_HPP
