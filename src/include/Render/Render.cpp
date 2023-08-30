#include "Render.hpp"

Render::Render(const char* title, int& width, int& height) 
    :window(NULL), renderer(NULL) 
{
    window = SDL_CreateWindow(title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height, SDL_WINDOW_SHOWN);

    if(window == NULL)
        std::cout << "Window failed to initialize: " << SDL_GetError() << std::endl;

    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    log("RenderWindow class has been initialized");
}
Render::~Render(){
    SDL_DestroyWindow(window);    
    log("RenderWindow class has been destroyed");
}

void Render::clearScreen(){
    SDL_SetRenderDrawColor(renderer,0,0,0,0);
    SDL_RenderClear(renderer);
}
SDL_Rect Render::createRect(const int& x, const int& y, const int& size){
    SDL_Rect rect;    
    rect.x = x;
    rect.y = y;
    rect.w = size;
    rect.h = size;
    //const std::string msg = "Rectangle has been created! [x]: " + std::to_string(x) + " [y]: " + std::to_string(y) + " [size]: " + std::to_string(size); 
    //log(msg);
    return rect;
}
void Render::renderRect(SDL_Rect* rect,bool fill,  const uint8_t& r, const uint8_t& g, const uint8_t& b){
    SDL_SetRenderDrawColor(renderer, r,g,b,255);   
    if(fill)
        SDL_RenderFillRect(renderer,rect);
    else
        SDL_RenderDrawRect(renderer,rect);
}
void Render::render(){
    SDL_RenderPresent(renderer);
}
