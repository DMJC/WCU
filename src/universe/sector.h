#pragma once
#include "quadrant.h"

struct Sector {
    std::string name;
    Quadrant quadrants[3];  // usually 3, but dynamic
};
