# Compiler Flags
CFLAGS = -std=c++17 -O2

# Linker Flags
LDFLAGS = -lglfw -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

# Rules to compile

FitVis: main.cpp
	g++ $(CFLAGS) -o FitVis main.cpp $(LDFLAGS)

.PHONY: test clean

test: FitVis
	./FitVis

clean:
	rm -f FitVis