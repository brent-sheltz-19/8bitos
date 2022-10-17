#pragma once
#include <iostream>
#include <SDL.h>
#include <vector>

#include "LWindow.h"
#include "Component.h"
#include "Button.h"
const int windowwidth = 640;
const int windowheight= 480;

using namespace std;

int main(int argc, char** argv)
{ 
	int init_error_code = SDL_Init(SDL_INIT_EVENTS || SDL_INIT_VIDEO);
	vector<Button> componentlist;
	componentlist.push_back(Button(0, 0, 100, 50));
	componentlist.push_back(Button(100, 0, 100, 50));
	LWindow mainwindow;
	mainwindow.setButtons(&componentlist);
	mainwindow.init("video output", windowwidth, windowheight);
	while (true)
	{
		mainwindow.render();



	}
	SDL_Quit();
	return 1;
}