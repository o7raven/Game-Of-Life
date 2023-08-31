CC = g++	
OBJS = src/main.cpp src/include/Render/*.cpp src/include/Log/*.cpp src/include/Grid/*.cpp src/include/Simulation/*.cpp
COMPILER_FLAGS=-w -I src/include	
LINKER_FLAGS=-L src/lib -lmingw32 -lSDL2main -lSDL2	

ifeq ($(OS),Windows_NT)
	TARGET = GameOfLife.exe
else
	TARGET = GameOfLife 
endif

all: $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(TARGET)

