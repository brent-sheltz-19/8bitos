#pragma once
#include <cstdint>
class Ram
{

	uint8_t* memory;
	int size;
public:
	Ram();
	Ram(int size);
	void write(uint32_t, uint8_t);
	uint8_t read(uint32_t);
	void* baseaddress();
	int getSize();

};
Ram::Ram()
{
	memory = NULL;
}
inline Ram::Ram(int size)
{
	memory = (uint8_t*)malloc(size);
	this->size = size;
}
inline void Ram::write(uint32_t add,uint8_t val)
{
	memory[add] = val;
}
inline uint8_t Ram::read(uint32_t add)
{
	return uint8_t(memory[add]);
}

inline void* Ram::baseaddress()
{
	return &memory;
}

inline int Ram::getSize()
{
	return size;
}


