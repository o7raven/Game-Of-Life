#include <SDL2/SDL.h>
#include <vector>
#include <iostream>
#include "include/Render/Render.hpp"
#include "include/Grid/Grid.hpp"
#include "include/Simulation/Simulation.hpp"


int main(int argc, char* argv[]){
    if(SDL_Init(SDL_INIT_VIDEO) > 0 )
        std::cerr << "Initialization error: " << SDL_GetError() << std::endl;

    int SCREEN_HEIGHT = 720;
    int SCREEN_WIDTH = 720;
    Render window("Game of life",SCREEN_WIDTH, SCREEN_HEIGHT);

    const int RECT_SIZE = 60;
    Grid grid(&window, SCREEN_WIDTH, SCREEN_HEIGHT, RECT_SIZE);
    Simulation sim(&grid);
    bool isRunning=true;
    SDL_Event event;
    bool spaceIsPressed=false;
    while(isRunning){
        while(SDL_PollEvent(&event) != 0){
            if(event.type == SDL_QUIT)
                isRunning = false;      
            if(event.type == SDL_KEYDOWN){
                if(event.key.keysym.sym == SDLK_SPACE && !spaceIsPressed){
                    spaceIsPressed=true;
                    sim.Simulate();
                }
            }if(event.type == SDL_KEYUP){
                if(event.key.keysym.sym == SDLK_SPACE){
                    spaceIsPressed = false;
                }
            }
                //sim.Simulate(grid.getGridState());
            grid.handleMouseHover(&event);
        }
        window.clearScreen();
        grid.renderGrid();
        window.render();
    } 

    SDL_Quit();
    return 0;        
}

void handleEvents(){

}
