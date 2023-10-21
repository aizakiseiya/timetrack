# CMake generated Testfile for 
# Source directory: /home/aizaki/workspace/timetrack
# Build directory: /home/aizaki/workspace/timetrack/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(TaskTest "/home/aizaki/workspace/timetrack/build/test/TaskTest")
set_tests_properties(TaskTest PROPERTIES  _BACKTRACE_TRIPLES "/home/aizaki/workspace/timetrack/CMakeLists.txt;9;add_test;/home/aizaki/workspace/timetrack/CMakeLists.txt;0;")
add_test(WorkHistoryTest "/home/aizaki/workspace/timetrack/build/test/WorkHistoryTest")
set_tests_properties(WorkHistoryTest PROPERTIES  _BACKTRACE_TRIPLES "/home/aizaki/workspace/timetrack/CMakeLists.txt;10;add_test;/home/aizaki/workspace/timetrack/CMakeLists.txt;0;")
subdirs("src")
subdirs("test")
