#ifndef __SPHTIMER_H__
#define __SPHTIMER_H__

#include <time.h>

class Timer
{
private:
	int frames;
	int update_time;
	int last_time;
	double FPS;
    unsigned long GetTickCount();

public:
	Timer();
	void update();
	double get_fps();
};

#endif
