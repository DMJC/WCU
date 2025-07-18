#pragma once
#include "../universe/star_system.h"

struct System;

struct JumpPoint {
    std::string name;
    double x, y, z;

    // Link to destination system
    std::string destination_system_name;
    std::string destination_nav_point_name;  // optional

    // Runtime-only resolved pointer (optional but useful)
    System* destination_system = nullptr;
};
