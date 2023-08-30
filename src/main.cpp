#include <SDL2/SDL.h>
#include <vector>
#include <iostream>
#include "Render/Render.hpp"
#include "Grid/Grid.hpp"
int main(int argc, char* argv[]){
    if(SDL_Init(SDL_INIT_VIDEO) > 0 )
        std::cerr << "Initialization error: " << SDL_GetError() << std::endl;

    int SCREEN_SIZE = 720;
    Render window("Game of life",SCREEN_SIZE, SCREEN_SIZE);

    const int RECT_SIZE = 80;
    Grid grid(&window, SCREEN_SIZE, RECT_SIZE);

    bool isRunning=true;
    SDL_Event event;
    while(isRunning){
        while(SDL_PollEvent(&event) != 0){
            if(event.type == SDL_QUIT)
                isRunning = false;      
            grid.handleMouseHover(&event);
        }
        window.clearScreen();
        grid.renderGrid();
        window.render();
    } 

    SDL_Quit();
    return 0;        
}

