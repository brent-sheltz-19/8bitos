#pragma once
#include <iostream>
#include <SDL.h>
#include <vector>

#include "LWindow.h"
#include "Component.h"
#include "Button.h"
#include "cpu.h"
#include "ssd.h"

const int windowwidth = 640;
const int windowheight= 480;

using namespace std;
void run(os* k)
{


}


int main(int argc, char** argv)
{ 
	string scale;
	Ram vram = Ram((windowheight * windowwidth)*3);
	Ram mainram = Ram(2000);

	cpu a;
	a.setRam(&mainram);
	a.setvRam(&vram);
	os oper=os(&a);
	oper.debug();
	int init_error_code = SDL_Init(SDL_INIT_EVENTS || SDL_INIT_VIDEO);
	vector<Button> componentlist;
	componentlist.push_back(Button(0, 0, 100, 50,debug));
	componentlist.push_back(Button(100, 0, 100, 50, mount));
	LWindow mainwindow;
	mainwindow.setButtons(&componentlist);
	mainwindow.init("video output", windowwidth, windowheight);
	mainwindow.Setram(&vram);
	mainwindow.Setos(&oper);
	getscale:
	cout << "enter scale 1,2,4\n";
	cin >> scale;
	int sc = stoi(scale);
	if (sc > 4||sc<1)
	{
		cout << "invalid range\n";
		goto getscale;
	}
	mainwindow.setscaleing(stoi(scale));
	SDL_Event e;
	oper.setBackgroundblue();
	while (true)
	{
		mainwindow.render();
		run(&oper);
		SDL_PollEvent(&e);
		if(e.type == SDL_QUIT)
		{
			break;
		}
	}
	SDL_Quit();
	return 1;
}
