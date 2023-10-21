#pragma once

#include <chrono>


class Timer
{
public:
    virtual ~Timer() = default;

    virtual time_t Now() = 0;
};

using namespace std::chrono;

class NomalTimer : public Timer
{
    time_t Now() override { 
        system_clock::time_point p = system_clock::now();
        return system_clock::to_time_t(p);  
    };
};