#pragma once
#include "Render/Render.hpp"
class Grid
{
private:
    const int SCR_W;
    const int SCR_H;
    const int RECT_SIZE;
    const int matrixSize;
    Render& window;
    std::vector<std::vector<SDL_Rect>> matrix;
    std::vector<std::vector<int>> matrixState;
    void createGrid();
public:
    Grid(Render* window ,const int& SCR_W, const int& SCR_H,  const int& RCT_SIZE);
    ~Grid();
    void renderGrid();
    std::vector<std::vector<SDL_Rect>>* getGrid();
    std::vector<std::vector<int>>* getGridState();
    void handleMouseHover(SDL_Event* e);
};

