OBJS = src/main.cpp src/include/Render/*.cpp src/include/Log/*.cpp src/include/Grid/*.cpp src/include/Simulation/*.cpp
NAME = app.exe
CC = g++	
COMPILER_FLAGS=-w -I src/include	
LINKER_FLAGS=-L src/lib -lmingw32 -lSDL2main -lSDL2	
all:$(OBJS)	
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(NAME)	
