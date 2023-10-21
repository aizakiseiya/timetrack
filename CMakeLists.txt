cmake_minimum_required(VERSION 3.10)
project(TIMETRACKER CXX)

add_subdirectory(src)
add_subdirectory(test)

# enable ctest
enable_testing()
add_test(NAME TaskTest COMMAND TaskTest)
add_test(NAME WorkHistoryTest COMMAND WorkHistoryTest)