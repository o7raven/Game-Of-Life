#pragma once
#include <vector>
#include "Log/Log.hpp"
#include "Grid/Grid.hpp"
class Simulation
{
private:
    Grid *grid;
    std::vector<std::vector<int>> *matrix=0;
    int getNeighbours(const int& col, const int& row);
    bool outOfBounds(const int& col, const int& row);
public:
    Simulation(Grid* grid);
    ~Simulation();
    void Simulate();
};