cmake_minimum_required(VERSION 3.10)

project(opencv_study)


set(OpenCV_DIR ${CMAKE_CURRENT_SOURCE_DIR}/modules/opencv/build/)
find_package(OpenCV REQUIRED)

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE
    ${OpenCV_INCLUDE_DIRS})

target_link_libraries(${PROJECT_NAME}
    ${OpenCV_LIBS})