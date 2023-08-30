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
     
}


uint8_t Simulation::getNeighbours(){
    uint8_t numOfN=0;
    for(int i=0; i<(*matrix).size(); i++){
        for(int j=0; j<(*matrix).size(); j++){
            if((*matrix)[i-1][j-1] == 1)
                numOfN++;
            if((*matrix)[i-1][j] == 1)
                numOfN++;
            if((*matrix)[i-1][j+1] == 1)
                numOfN++;
            if((*matrix)[i][j-1] == 1)
                numOfN++;
            if((*matrix)[i][j+1] == 1)
                numOfN++;
            if((*matrix)[i+1][j-1] == 1)
                numOfN++;
            if((*matrix)[i+1][j] == 1)
                numOfN++;
            if((*matrix)[i+1][j+1] == 1)
                numOfN++;
        }
    }
    return numOfN;
}