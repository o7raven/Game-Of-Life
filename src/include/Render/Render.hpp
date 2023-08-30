#pragma once
#include <SDL2/SDL.h>
#include <iostream>
#include <vector>

#include "Log/Log.hpp"

class Render
{
private:
    SDL_Window* window;
    SDL_Renderer* renderer;
public:
    Render(const char* title, int& width, int& height);
    ~Render();
    void clearScreen();
    void renderRect(SDL_Rect* rect,bool fill, const uint8_t& r, const uint8_t& g, const uint8_t& b);
    void render();
    SDL_Rect createRect(const int& x, const int& y, const int& size);
};

