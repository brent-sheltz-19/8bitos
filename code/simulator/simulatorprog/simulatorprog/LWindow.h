#pragma once
#include <iostream>
#include <SDL.h>
#include <vector>
#include <string>
#include <thread>
using namespace std;

#include "Component.h"
#include "Button.h"
#include "Ram.h"
#include "os.h"
class LWindow
{
public:
    LWindow();
    void handleevent(SDL_Event* e);
    char init(string,int,int);
	int getX();
	int getY();
	void setX(int);
	void setY(int); 
    void setButtons(vector<Button>*);
    vector<Button>* getButtons();
    void render();
    void Setram(Ram*);
    void Setos(os*);
    void setscaleing(int);
    os* getActiveos();
private:
    vector<Component>* components;
    vector<Button>* buttons;
    Ram* vram;
    os* activeos;

    //Window data
    SDL_Window* mWindow;
    SDL_Renderer* mRenderer;
    int mWindowID;
    int pixelmode;
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
inline vector<Button>* LWindow::getButtons()
{
    return buttons ;
}
inline os* LWindow::getActiveos()
{
    return activeos;
}
inline void LWindow::render()
{
    SDL_Event e;
    thread eventthread;
    if (!mMinimized)
    {
        //Clear screen
        //SDL_RenderClear(mRenderer);
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
        if (pixelmode == 0||pixelmode==1)
        {
            int y = 0; 
            while(pixel.y<mHeight)
            {
            

                SDL_PollEvent(&e);
                if (e.type > 0)
                {
                    handleevent(& e);
                }
                uint8_t a = vram->read(y);
                //cout << "address " << y << " data " << a << endl;
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
                y++;
            
                //cout << "pixel x " << pixel.x << "pixel y " << pixel.y << endl;
            
                //SDL_RenderPresent(mRenderer);
            }
        }
        else if(pixelmode==2)
        {
            int y = 0;
            while (pixel.y < mHeight)
            {


                SDL_PollEvent(&e);
                if (e.type > 0)
                {
                    handleevent(&e);
                }
                uint8_t a = vram->read(y);
                //cout << "address " << y << " data " << a << endl;
                if (y % 3 == 0)
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
                    SDL_RenderDrawRect(mRenderer, &pixel);
                    pixel.x++;
                }
                if (pixel.x == mWidth)
                {
                    pixel.x = 0;
                    pixel.y+=2;
                }
                y++;

                //cout << "pixel x " << pixel.x << "pixel y " << pixel.y << endl;

                //SDL_RenderPresent(mRenderer);
            }
            SDL_RenderPresent(mRenderer);

        }
        else if (pixelmode == 4)
        {
            int y = 0;
            while (pixel.y < mHeight)
            {


                SDL_PollEvent(&e);
                if (e.type > 0)
                {
                    handleevent(&e);
                }
                uint8_t a = vram->read(y);
                //cout << "address " << y << " data " << a << endl;
                if (y % 3 == 0)
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
                    SDL_RenderDrawRect(mRenderer, &pixel);
                    pixel.x++;
                    SDL_RenderDrawRect(mRenderer, &pixel);
                    pixel.x++;
                    SDL_RenderDrawRect(mRenderer, &pixel);
                    pixel.x++;
                }
                if (pixel.x == mWidth)
                {
                    pixel.x = 0;
                    pixel.y += 1;
                }
                y++;

                //cout << "pixel x " << pixel.x << "pixel y " << pixel.y << endl;

                //SDL_RenderPresent(mRenderer);
            }
            SDL_RenderPresent(mRenderer);

        }

        SDL_RenderPresent(mRenderer);

    }
}
inline void LWindow::Setram(Ram* r)
{
    vram = r;
}
inline void LWindow::Setos(os* a)
{
    activeos = a;
}
inline void LWindow::setscaleing(int a)
{
    pixelmode = a;
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
void LWindow::handleevent(SDL_Event* e)
{
    int x, y;
    SDL_GetMouseState(&x, &y);
    if (e->type == SDL_MOUSEBUTTONDOWN)
    {
        for (unsigned int i = 0; i < getButtons()->size(); i++)
        {
            Button b = getButtons()->at(i);
            
            if (b.inRange(x, y))
            {
                string b;
                switch (getButtons()->at(i).getAction())
                {
                case debug:
                    activeos->debug();
                    break;
                case mount:
                    activeos->mount();
                    return;
                default:
                    break;
                }
            }
        }
    }
    
}