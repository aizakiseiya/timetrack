#pragma once

#include <chrono>
#include <string>
#include <list>

struct WorkLog
{
    /* data */
    // std::tm start_date_time;
    // std::tm top_date_time;
    // std::string note;
    
};



class WorkHistory
{
public:
    // WorkLog& GetLog();

    // void SetWorkStartDateTime();

    void AddLog(WorkLog* log);
    std::list<WorkLog*>& GetLogList() { return work_log_list_; };

    
private:
    std::list<WorkLog*> work_log_list_;
};