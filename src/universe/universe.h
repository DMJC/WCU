#pragma once
#include "sector.h"

class Universe {
public:
    std::vector<Sector> sectors;

    void add_sector(const Sector& s);
    const Sector* find_sector(const std::string& name) const;
    void print_hierarchy() const;
};
