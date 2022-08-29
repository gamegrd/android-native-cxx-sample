project(nativa_sample)
cmake_minimum_required(VERSION 3.10.2)
set(CMAKE_VERBOSE_MAKEFILE  on)
set(CMAKE_CXX_STANDARD 20)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
add_subdirectory(src)