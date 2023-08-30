OBJS = src/main.cpp src/include/Render/*.cpp src/include/Log/*.cpp src/include/Grid/*.cpp src/include/Simulation/*.cpp
NAME = app.exe	
CC = g++	
COMPILER_FLAGS=-w	
LINKER_FLAGS=-L src/lib -lmingw32 -lSDL2main -lSDL2	
HEADERS=-I src/include	
all:$(OBJS)	
	$(CC) $(OBJS) $(HEADERS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(NAME)	