#include "../include/workHistory.hpp"


// WorkLog& WorkHistory::GetLog()
// {
//     if (!work_log_list_.empty()) {
//         return work_log_list_.front();
//     }
// }

// void WorkHistory::SetWorkStartDateTime()
// {
//     start_date_time_.
// }

void WorkHistory::AddLog(WorkLog* log)
{
    work_log_list_.push_back(log);
}

