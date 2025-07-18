#pragma once
#include <string>
#include <vector>
#include "../factions.h"
#include "../space/bases.h"
#include "../space/jumppoints.h"
#include "../space/planets.h"
#include "../space/stars.h"

struct JumpPoint;

struct NavPoint {
    std::string name;
    float x, y, z;
};

struct System {
    std::string name;
    Faction faction;
    std::vector<NavPoint> nav_points;
    std::vector<Planet> planets;
    std::vector<Base> bases;
    std::vector<Star> stars;
    // Add additional vectors like bases, planets, etc. here
};
