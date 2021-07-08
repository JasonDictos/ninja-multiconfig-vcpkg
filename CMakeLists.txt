cmake_minimum_required(VERSION 3.20.5 FATAL_ERROR)

project(Example DESCRIPTION "Example showing a vcpkg issue")

set(CMAKE_CXX_STANDARD 20)

find_package(
	Boost REQUIRED
	COMPONENTS
		system
)

add_executable(example main.cpp)

target_link_libraries(example PRIVATE
	Boost::system
)
