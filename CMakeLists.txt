cmake_minimum_required(VERSION 3.19)
project(visitlog)

set(CMAKE_CXX_STANDARD 14)

add_executable(visitlog main.cpp visitor.cpp visitor.h)