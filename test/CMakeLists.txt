cmake_minimum_required(VERSION 3.10)

# set runtime directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

# declare GTEST_ROOT
set(GTEST_ROOT ~/googletest-1.13.0)

# Include files directory
include_directories(${GTEST_ROOT}/googletest/include/)

#Library directory
link_directories(${GTEST_ROOT}/build/lib)

# Generate exectable file
add_executable(TaskTest ${CMAKE_CURRENT_SOURCE_DIR}/TaskTest.cpp)
add_executable(WorkHistoryTest ${CMAKE_CURRENT_SOURCE_DIR}/WorkHistoryTest.cpp)

target_include_directories(TaskTest
    PRIVATE ${PROJECT_SOURCE_DIR}/include
    )   
target_include_directories(WorkHistoryTest
    PRIVATE ${PROJECT_SOURCE_DIR}/include
    )   

# Link libraries
target_link_libraries(TaskTest task gtest gtest_main pthread)
target_link_libraries(WorkHistoryTest task gtest gtest_main pthread)