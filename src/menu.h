#ifndef MENU_H
#define MENU_H

enum class MenuState {
    QUIT,
    SETTINGS,
    LOAD_GAME,
    NEW_GAME,
    MAIN_MENU
};

MenuState show_main_menu();

#endif //MENU_H
