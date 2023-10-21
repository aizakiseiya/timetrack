cmake_minimum_required(VERSION 3.10)
add_library(task STATIC task.cpp timer.cpp workHistory.cpp)

add_executable(main main.cpp)
target_link_libraries(main task)
