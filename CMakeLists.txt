cmake_minimum_required(VERSION 3.20.5 FATAL_ERROR)

project(Example DESCRIPTION "Example showing a vcpkg issue")

set(CMAKE_CXX_STANDARD 20)

find_package(Boost REQUIRED COMPONENTS random)

if (WIN32)
	set(CMAKE_MSVC_RUNTIME_LIBRARY 
		"MultiThreaded$<$<OR:$<CONFIG:Debug>,$<CONFIG:DebugCoverage>>:Debug>")
endif()

add_executable(example main.cpp)

target_link_libraries(example PRIVATE
	Boost::random
)
