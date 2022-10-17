#pragma once
#include "Component.h"
class Button : public Component
{
    SDL_Rect rect;
public:
    Button(int x,int y,int w,int h );
    void render(SDL_Renderer*) override;
    
    bool inRange(int int);
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
void Button::render(SDL_Renderer* a)
{
	
}

inline bool Button::inRange(int xpos,int ypos)
{
    if(rect.x<=xpos && xpos<=rect.w)
	{
		if(rect.y<=ypos && ypos<=rect.w)
		{
			return true;
		}
	
	}
	
	return false;
}
