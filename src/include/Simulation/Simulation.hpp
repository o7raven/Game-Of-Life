#pragma once
#include "Log/Log.hpp"
#include <vector>

class Simulation
{
private:
    std::vector<std::vector<int>>* matrix;
    uint8_t getNeighbours(const int& col, const int& row);
public:
    Simulation();
    ~Simulation();
    std::vector<std::vector<int>> Simulate(std::vector<std::vector<int>>* matrix);
};