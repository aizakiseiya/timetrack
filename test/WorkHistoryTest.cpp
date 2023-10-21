#include <gtest/gtest.h>
#include <workHistory.hpp>
#include <task.hpp>

namespace{

TEST(WorkHistoryTest, AddWorkLog){
    WorkHistory* history = new WorkHistory();
    WorkLog *log = new WorkLog();
    history->AddLog(log);
}

TEST(WorkHistoryTest, GetWorkLog)
{
    WorkHistory* history = new WorkHistory();
    WorkLog *log1 = new WorkLog();
    history->AddLog(log1);

    WorkLog *log2 = new WorkLog();
    history->AddLog(log2);

    std::list<WorkLog*>& log_list = history->GetLogList();
    auto itr = log_list.begin();

    EXPECT_EQ(*itr, log1);
    itr++;
    EXPECT_EQ(*itr, log2);
}

TEST(WorkHistoryTest, GenerateWorkLog)
{
    WorkHistory* history = new WorkHistory();
    Task* task1 = new Task("task1");
    task1->Start();
    task1->Stop();

    std::list<WorkLog*>& log_list = history->GetLogList();
    auto itr = log_list.begin();
    std::string string_task1 = "task1";

    EXPECT_EQ((*itr)->task_name_, string_task1);
}


}