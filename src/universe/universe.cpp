#include "universe.h"
#include <iostream>

void Universe::add_sector(const Sector& s) {
    sectors.push_back(s);
}

const Sector* Universe::find_sector(const std::string& name) const {
    for (const auto& sector : sectors)
        if (sector.name == name)
            return &sector;
    return nullptr;
}

void Universe::print_hierarchy() const {
    for (const auto& sector : sectors) {
        std::cout << "Sector: " << sector.name << "\n";
        for (const auto& quadrant : sector.quadrants) {
            std::cout << "  Quadrant: " << quadrant.name << "\n";
            for (const auto& system : quadrant.systems) {
                std::cout << "    System: " << system.name << "\n";
            }
        }
    }
}
