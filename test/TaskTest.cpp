#include "../include/task.hpp"
#include "../include/workHistory.hpp"
#include <gtest/gtest.h>
#include <ctime>

namespace{

TEST(TaskTest, CreateTask) {
    Task *task1 = new Task("task1");
    EXPECT_EQ(task1->TaskName(), "task1");
    Task * task2 = new Task("task2");
    EXPECT_EQ(task2->TaskName(), "task2");
}

TEST(TaskTest, TaskLifecycle) {
    Task* task = new Task("task");
    EXPECT_EQ(task->Status(), E_TASK_STATUS::CREATE_NEW);

    task->Start();
    EXPECT_EQ(task->Status(), E_TASK_STATUS::WORKING);

    task->Stop();
    EXPECT_EQ(task->Status(), E_TASK_STATUS::SUSPENDED);

    task->Complete();
    EXPECT_EQ(task->Status(), E_TASK_STATUS::COMPLETED);

    task->Delete();
    EXPECT_EQ(task->Status(), E_TASK_STATUS::DELETED);
}

TEST(TaskTest, TimeManage) {
    Task* task = new Task("task");
    task->Start();
    sleep(1);
    task->Stop();
    EXPECT_EQ(task->ElapsedTime(), 1);

    task->Start();
    sleep(2);
    task->Stop();
    EXPECT_EQ(task->ElapsedTime(), 2);

}

// std::time_t CurrentTime() {
//     std::chrono::system_clock::time_point now = std::chrono::system_clock::now();
//     return std::chrono::system_clock::to_time_t(now);
// }

// TEST(TaskTest, WorkHistory) {
//     Task* task = new Task("task");

//     std::time_t first_time = CurrentTime();
//     std::tm* first_tm = std::localtime(&first_time);
//     task->Start();
//     task->Stop();

//     sleep(1);
//     std::time_t second_time = CurrentTime();
//     std::tm* second_tm = std::localtime(&second_time);
//     task->Start();
//     task->Stop();

//     sleep(2);
//     std::time_t third_time = CurrentTime();
//     std::tm* third_tm = std::localtime(&third_time);
//     task->Start();
//     task->Stop();

//     WorkHistory& history = task->GetWorkHistory();
//     std::list<WorkLog*>& log_list = history.GetLogList();
    
    
// }

TEST(TaskTest, LogGenerate) {
    Task* task1 = new Task("task1");
    task1->Start();
}

}
// namespace {
//     class MyTest : public ::testing::Test{};

//     TEST_F(Mytest, CreateTask) {
//         Task *task1 = new Task("task1");
//         EXPECT_EQ(task1->TaskName(), "task1");
//     }
// }

// int main(int argc, char **argv) {
//     ::testing::InitGoogleTest(&argc, argv);
//     return RUN_ALL_TESTS();
// }