#include <stdio.h>
#include <iostream>
#include <boost/random/random_device.hpp>

inline auto& generator() noexcept {
	static thread_local boost::random_device generator{};
	return generator;
}

int main(int argc, char **argv) {
	std::cout << "Hello World!" << generator()() << std::endl;
}
