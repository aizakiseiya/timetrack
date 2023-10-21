#pragma once 

#include <string>
#include <chrono>
#include <stdint.h>

#include "timer.hpp"
#include "workHistory.hpp"

enum class E_TASK_STATUS
{
    CREATE_NEW,
    WORKING,
    SUSPENDED,
    COMPLETED,
    DELETED,
};

class Task
{
public:
    Task(std::string task_name);

    std::string TaskName() { return task_name_; } ;
    E_TASK_STATUS Status() { return status_; } ;

    void Start();
    void Stop();
    void Complete() { status_ = E_TASK_STATUS::COMPLETED; };
    void Delete()   { status_ = E_TASK_STATUS::DELETED; };

    const time_t ElapsedTime() { return (end_ - start_); };

    WorkHistory& GetWorkHistory() { return history_; };

    

private:
    std::string task_name_;
    E_TASK_STATUS status_;
    // std::chrono::system_clock::time_point start_, end_;
    time_t start_, end_;
    Timer* timer;
    WorkHistory history_;

};