#include "Simulation.hpp"

Simulation::Simulation()
{
    log("Matrix class has been initialized");
}
Simulation::~Simulation(){
    log("Matrix class has been destroyed");
}
std::vector<std::vector<int>> Simulation::Simulate(std::vector<std::vector<int>>* _matrix){
     matrix = _matrix;
     for(int i = 0; i < (*matrix).size(); i++){
        for(int j = 0; j < (*matrix)[i].size(); j++){
            if(getNeighbours(i,j) < 2 || getNeighbours(i,j) > 3 && (*matrix)[i][j] == 1){
                (*matrix)[i][j] = 0;
            }else if(getNeighbours(i,j) == 2 || getNeighbours(i,j) == 3 && (*matrix)[i][j] == 1){
                continue;
            }else if(getNeighbours(i,j) == 3 && (*matrix)[i][j] == 0){
                (*matrix)[i][j] = 1;
            }
        }
     }
}


uint8_t Simulation::getNeighbours(const int& col, const int& row){
    uint8_t numOfN=0;
    if((*matrix)[col-1][row-1] == 1)
        numOfN++;
    if((*matrix)[col-1][row] == 1)
        numOfN++;
    if((*matrix)[col-1][row+1] == 1)
        numOfN++;
    if((*matrix)[col][row-1] == 1)
        numOfN++;
    if((*matrix)[col][row+1] == 1)
        numOfN++;
    if((*matrix)[col+1][row-1] == 1)
        numOfN++;
    if((*matrix)[col+1][row] == 1)
        numOfN++;
    if((*matrix)[col+1][row+1] == 1)
        numOfN++;

    return numOfN;
}