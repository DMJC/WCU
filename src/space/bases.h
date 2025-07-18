#pragma once
#include "../gfx/mesh.h"
enum base_type{ MINING, AGRICULTURAL, PIRATE, PLEASURE, REFINERY, NEW_DETROIT, NEW_CONSTANTINOPLE, PERRY, MILITARY, CIVILIAN };

struct Base {
    std::string name;
    double location[3];
    int scale[3];
    int base_type;
    bool has_mesh;
    Mesh mesh;
};
