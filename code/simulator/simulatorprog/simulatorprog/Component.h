#pragma once
#include <iostream>
#include <SDL.h>
#include <vector>
#include <string>

using namespace std;

class Component
{
	

public:
	Component() {}
	int getX()
	{
		return x;
	}
	int getY()
	{
		return y;
	}
	SDL_Texture* createTexture()
	{
	
	}
	virtual SDL_Texture* getTexture()
	{
		return texture;
	}
	virtual void render(SDL_Renderer*)=0;
protected:
	int x, y;
	SDL_Texture* texture;

};
