#pragma once
#include "Component.h"

class Button : public Component
{
    
public:
    SDL_Rect rect;
    Button(int x,int y,int w,int h );
    void render(SDL_Renderer*) override;    
    bool inRange(int,int);
private: 
    SDL_Rect border;
 };
inline Button::Button(int x, int y, int w, int h)
{
    rect.x = x;
    rect.y = y;
    rect.w = w;
    rect.h = h;
    this->x = x;
    this->y = y;
    border.x = x;
    border.y = y;
    border.w = w;
    border.h = h;
}
void Button::render(SDL_Renderer* a)
{
    SDL_SetRenderDrawColor(a, 0xFF, 0xFF, 0xFF, 0xFF);
    SDL_RenderFillRect(a,&rect);
    SDL_SetRenderDrawColor(a, 0xFF, 0x00, 0x00, 0xFF);
    SDL_RenderDrawRect(a,&border);
	
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
