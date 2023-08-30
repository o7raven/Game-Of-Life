#include "Grid.hpp"

Grid::Grid(Render* _window, const int& SCR_W, const int& SCR_H, const int& RCT_SIZE)
:window(*_window),SCR_W(SCR_W),SCR_H(SCR_H) , RECT_SIZE(RCT_SIZE), matrixSize(SCR_W/RECT_SIZE), 
matrix(std::vector<std::vector<SDL_Rect>>(matrixSize, std::vector<SDL_Rect>(matrixSize))),
matrixState(std::vector<std::vector<int>>(matrixSize, std::vector<int>(matrixSize)))
{
    createGrid();
    log("Grid class has been initialized");
}

Grid::~Grid(){
    log("Grid class has been destroyed");
}

void Grid::createGrid(){
    int offsetY = 0, offsetX = offsetY;  
    for(int i=0; i<matrix.size(); i++){
        offsetX=0;
        for(int j=0; j<matrix[i].size(); j++){
            matrix[i][j] = window.createRect(0+offsetX, 0+offsetY, RECT_SIZE);
            offsetX+=RECT_SIZE;
        }
        offsetY+=RECT_SIZE;
    }
}
void Grid::renderGrid(){
    for(int i=0; i<matrix.size();i++){
        for(int j=0; j<matrix[i].size();j++){
            switch (matrixState[i][j])
            {
            case 0:
                window.renderRect(&(matrix[i][j]), false, 255,255,255);
                break;
            
            case 1:
                window.renderRect(&(matrix[i][j]), true, 255,255,255);
                break;
            }
        }
    }
}

std::vector<std::vector<SDL_Rect>>* Grid::getGrid(){
    return &matrix;
}
std::vector<std::vector<int>>* Grid::getGridState(){
    return &matrixState;
}

void Grid::handleMouseHover(SDL_Event* e){
    if(!(e->type == SDL_MOUSEMOTION || e->type == SDL_MOUSEBUTTONDOWN || e->type == SDL_MOUSEBUTTONUP))
        return;
    int x,y;
    SDL_GetMouseState(&x,&y);
    for(int i=0; i < matrix.size(); i++){
        for(int j=0; j < matrix[i].size(); j++){
            if(x>matrix[i][j].x && x<matrix[i][j].x+matrix[i][j].w && y>matrix[i][j].y && y<matrix[i][j].y+matrix[i][j].h ){
                if(e->type == SDL_MOUSEBUTTONDOWN){
                    switch (matrixState[i][j])
                    {
                    case 0:
                        matrixState[i][j] = 1;
                        break;
                    case 1:
                        matrixState[i][j] = 0;
                        break;
                    }
                }
                //std::cout << "You're on: [" << i << "][" << j << "]\n";
            }
            }
        }
}
