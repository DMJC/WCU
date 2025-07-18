#pragma once

enum star_type{ RED_GIANT, YELLOW_SUN, WHITE_DWARF, BLUE_SUN, BROWN_DWARF, PULSAR, QUASAR };

struct Star {
    std::string name;
    double location[3];
    int scale[3];
    int star_type; //red/yellow/white/blue/brown
};

struct Blackhole {
    std::string name;
    double location[3];
    int scale[3];
};
