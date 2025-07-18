#pragma once
#include "../gfx/terrain.h"
//enum planet_type{ };

struct Planet {
    std::string name;
    double location[3];
    int scale[3];
    bool has_terrain;
    Terrain terrain;
//    Texture ground_texture;
//    Texture atmosphere_texture;
//    Texture cloud_texture;
//    int planet_type; //Not Used atm.
};
