#pragma once
#include <iostream>
#include <SDL.h>
#include <vector>
#include <string>

using namespace std;

#include "Component.h"
#include "Button.h"
#include "Ram.h"
class LWindow
{
public:
    LWindow();
	char init(string,int,int);
	int getX();
	int getY();
	void setX(int);
	void setY(int); 
    void setButtons(vector<Button>*);
    void render();
    void Setram(Ram*);
private:
    vector<Component>* components;
    vector<Button>* buttons;
    Ram* vram;
    //Window data
    SDL_Window* mWindow;
    SDL_Renderer* mRenderer;
    int mWindowID;

    //Window dimensions
    int mWidth;
    int mHeight;
	int ystart;

    //Window focus
    bool mMouseFocus;
    bool mKeyboardFocus;
    bool mFullScreen;
    bool mMinimized;
    bool mShown;



};
inline LWindow::LWindow()
{
}
inline int LWindow::getX()
{
	return mWidth;
}
inline int LWindow::getY()
{
	return mHeight;
}
inline void LWindow::setX(int x)
{
    mWidth = x;
}
inline void LWindow::setY(int y)
{
    mHeight = y;
}
inline void LWindow::setButtons(vector<Button>* b)
{
    buttons = b;
}
inline void LWindow::render()
{
    if (!mMinimized)
    {
        //Clear screen
        SDL_RenderClear(mRenderer);
		SDL_Rect blackborder;
		blackborder.x=0;
		blackborder.y=0;
		blackborder.w=mWidth;
		blackborder.h= ystart;

		SDL_SetRenderDrawColor(mRenderer, 0x00, 0x00, 0x00, 0xFF);
		SDL_RenderFillRect(mRenderer,&blackborder);
        for (unsigned int i = 0; i < buttons->size(); i++)
        {
           buttons->at(i).render(mRenderer);

        }
        //SDL_RenderClear(mRenderer);
        SDL_Rect pixel;
        pixel.w = 1;
        pixel.h = 1;
        pixel.x = 0;
        pixel.y = ystart;
        SDL_Color color;
        int y = 0;
        while(pixel.y<mHeight)
        {
            
            
            uint8_t a = vram->read(y);
            cout << "address " << y << " data " << a << endl;
            if (y % 3==0)
            {
                color.r = a;
            }
            else if (y % 3 == 1)
            {
                color.g = a;
            }
            else if (y % 3 == 2)
            {
                color.b = a;
                SDL_SetRenderDrawColor(mRenderer, color.r, color.g, color.b, 255);
                SDL_RenderDrawRect(mRenderer, &pixel);
                pixel.x++;
            }
            if (pixel.x==mWidth) 
            {
                pixel.x = 0;
                pixel.y++;
            }
            //Update screen
            y++;
            cout << "pixel x " << pixel.x << "pixel y " << pixel.y << endl;
            SDL_RenderPresent(mRenderer);
        
        }

        //Update screen
        SDL_RenderPresent(mRenderer);
    }
}
inline void LWindow::Setram(Ram* r)
{
    vram = r;
}
inline char LWindow::init(string title,int SCREEN_WIDTH,int SCREEN_HEIGHT)
{
    //Create window
    mWindow = SDL_CreateWindow(title.c_str(), SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT + buttons->at(0).rect.h, SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE);
    if (mWindow != NULL)
    {
        mMouseFocus = true;
        mKeyboardFocus = true;
        mWidth = SCREEN_WIDTH;
        mHeight = SCREEN_HEIGHT;
		ystart = buttons->at(0).rect.h;
        //Create renderer for window
        mRenderer = SDL_CreateRenderer(mWindow, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
        if (mRenderer == NULL)
        {
            printf("Renderer could not be created! SDL Error: %s\n", SDL_GetError());
            SDL_DestroyWindow(mWindow);
            mWindow = NULL;
        }
        else
        {
            //Initialize renderer color
            SDL_SetRenderDrawColor(mRenderer, 0x00, 0x00, 0xFF, 0xFF);

            //Grab window identifier
            mWindowID = SDL_GetWindowID(mWindow);

            //Flag as opened
            mShown = true;
        }
    }
    else
    {
        printf("Window could not be created! SDL Error: %s\n", SDL_GetError());
    }

    if (mWindow != NULL && mRenderer != NULL)
    {

    }
    return 1;
}