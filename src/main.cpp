#include <SDL2/SDL.h>
#include <vector>
#include <iostream>
#include "include/Render/Render.hpp"
#include "include/Grid/Grid.hpp"
#include "include/Simulation/Simulation.hpp"



struct userValues
{
    int SCREEN_HEIGHT = 880;
    int SCREEN_WIDTH = 920;
    static constexpr int RECT_SIZE = 40;
    static const int TARGET_FPS = 15;
};
constexpr int userValues::RECT_SIZE;
int main(int argc, char* argv[]){
    static userValues userVals = {};
    SDL_Event event;
    if(SDL_Init(SDL_INIT_VIDEO) > 0 )
        std::cerr << "Initialization error: " << SDL_GetError() << std::endl;

    Render window("Game of life",userVals.SCREEN_WIDTH, userVals.SCREEN_HEIGHT);

    Grid grid(&window, userVals.SCREEN_WIDTH, userVals.SCREEN_HEIGHT, userVals.RECT_SIZE);
    bool spaceIsPressed=false;
    Simulation sim(&grid);
    
    bool isRunning=true;
    int delta = 1000/userVals.TARGET_FPS;
    while(isRunning){
        int startLoopTime = SDL_GetTicks();
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
        int loopTime = SDL_GetTicks() - startLoopTime;
        if(loopTime<delta)
            SDL_Delay(delta-loopTime);
    } 

    SDL_Quit();
    return 0;        
}

void handleEvents(){

}
