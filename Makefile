CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: tutorial/main.cpp
	g++ $(CFLAGS) -o VulkanTest tutorial/main.cpp $(LDFLAGS)

.PHONY: compile clean run

compile: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest

run: compile clean