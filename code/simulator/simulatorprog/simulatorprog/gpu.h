#include <iostream>
#include <SDL.h>
#include "Ram.h"
class gpu
{
	Ram* vram;
	SDL_Surface image;
public:
	int width, height;
	gpu();
	gpu(Ram*);
	void generateImage();
};
inline gpu::gpu()
{

}
inline gpu::gpu(Ram* a)
{
	vram = a;
}
inline void gpu::generateImage()
{
	int x=0, y=0;
	for (int i = 0; i < vram->getSize(); i++)
	{
		if(i%)
	}
}
