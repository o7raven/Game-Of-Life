#include "Simulation.hpp"

Simulation::Simulation(Grid* grid):grid(grid)
{
    log("Matrix class has been initialized");
}
Simulation::~Simulation(){
    log("Matrix class has been destroyed");
}
void Simulation::Simulate(){
    matrix = grid->getGridState();
    int mSize = (*matrix).size();
    //std::cout << mSize << std::endl;
    std::vector<std::vector<int>> neighbourCounts(mSize, std::vector<int>(mSize));
    for(int i = 0; i<mSize; i++){
        for(int j=0; j<mSize; j++){
            neighbourCounts[i][j] = getNeighbours(i,j);
        }
    }
    for(int i = 0; i<mSize; i++){
        for(int j=0; j<mSize; j++){
            if((*matrix)[i][j] == 1){
                if(neighbourCounts[i][j] < 2 )
                    (*matrix)[i][j] = 0;
                if(neighbourCounts[i][j] == 2 || neighbourCounts[i][j] == 3)
                    (*matrix)[i][j] = 1;
                if(neighbourCounts[i][j] > 3 )
                    (*matrix)[i][j] = 0;
        }
        else if((*matrix)[i][j] == 0 && neighbourCounts[i][j] == 3)
            (*matrix)[i][j] = 1;
        }
    }
}


int Simulation::getNeighbours(const int& col, const int& row){
    int numOfN=0;
    if (!outOfBounds(col - 1, row - 1) && (*matrix)[col - 1][row - 1] == 1)
        numOfN++;
    if (!outOfBounds(col - 1, row) && (*matrix)[col - 1][row] == 1)
        numOfN++;
    if (!outOfBounds(col - 1, row + 1) && (*matrix)[col - 1][row + 1] == 1)
        numOfN++;
    if (!outOfBounds(col, row - 1) && (*matrix)[col][row - 1] == 1)
        numOfN++;
    if (!outOfBounds(col, row + 1) && (*matrix)[col][row + 1] == 1)
        numOfN++;
    if (!outOfBounds(col + 1, row - 1) && (*matrix)[col + 1][row - 1] == 1)
        numOfN++;
    if (!outOfBounds(col + 1, row) && (*matrix)[col + 1][row] == 1)
        numOfN++;
    if (!outOfBounds(col + 1, row + 1) && (*matrix)[col + 1][row + 1] == 1)
        numOfN++;

    return numOfN;
}

bool Simulation::outOfBounds(const int& col, const int& row){
    return col < 0 || col >= (*matrix).size() || row < 0 || row >=(*matrix)[0].size();
}