#pragma once
#include "Component.h"
class Button : Component
{
    SDL_Rect rect;
public:
    Button(int x,int y,int w,int h );
    void render(SDL_Renderer*) override;
    
    bool inRange();
 };
inline Button::Button(int x, int y, int w, int h)
{
    rect.x = x;
    rect.y = y;
    rect.w = w;
    rect.h = h;
    this->x = x;
    this->y = y;
}
void Button::render(SDL_Renderer*)
{

}

inline bool Button::inRange()
{
    return false;
}
