#include "../include/task.hpp"

Task::Task(std::string task_name) : task_name_(task_name), start_(0), end_(0)
{
    status_ = E_TASK_STATUS::CREATE_NEW;
    timer = new NomalTimer();
}

void Task::Start()
{
    status_ = E_TASK_STATUS::WORKING; 

    std::time_t now = timer->Now();
    start_ = now;
    // WorkLog* log = new WorkLog(now);
    // history_.AddLog(*log);
    
}

void Task::Stop()
{
    status_ = E_TASK_STATUS::SUSPENDED;
    std::time_t now = timer->Now();
    end_ = now;
    // std::tm* localTime = std::localtime(&now);
    // history_.SetWorkStopDateTime();
}