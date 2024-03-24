CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

# Engine Commands

Engine: engine.cpp
	@g++ -o Engine engine.cpp

engine_compile: Engine
	@./Engine

engine_clean:
	@rm -f Engine

run_engine: engine_compile engine_clean

.PHONY: engine_clean engine_compile run_engine

# Tutorial Commands

VulkanTest: tutorial/main.cpp
	@g++ $(CFLAGS) -o VulkanTest tutorial/main.cpp $(LDFLAGS)

tutorial_compile: VulkanTest
	@./VulkanTest

tutorial_clean:
	@rm -f VulkanTest

run_tutorial: tutorial_compile tutorial_clean

.PHONY: tutorial_clean tutorial_compile run_tutorial