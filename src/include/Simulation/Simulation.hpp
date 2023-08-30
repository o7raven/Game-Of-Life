#pragma once
#include "Log/Log.hpp"
#include <vector>

class Simulation
{
private:
    std::vector<std::vector<int>>* matrix;
    uint8_t getNeighbours();
public:
    Simulation();
    ~Simulation();
    std::vector<std::vector<int>> Simulate(std::vector<std::vector<int>>* matrix);
};