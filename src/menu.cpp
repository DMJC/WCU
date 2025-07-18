#include "menu.h"
#include <SDL3/SDL.h>
#include <GL/gl.h>
#include <vector>
#include <string>
#include <iostream>
#include "text_renderer.h"

MenuState show_main_menu() {
    init_text_renderer(1280, 720);
    float mouse_x = 0.0f, mouse_y = 0.0f;
    bool mouse_clicked = false;
    static int selected = 0;
    const std::vector<std::string> options = {
        "Quit", "Settings", "Load Game", "New Game"
    };

    glClear(GL_COLOR_BUFFER_BIT);

    for (size_t i = 0; i < options.size(); ++i) {
        render_text(options[i], 100.0f, 500.0f - i * 40.0f, 1.0f, selected == static_cast<int>(i));
    }

    SDL_Event e;
    while (SDL_PollEvent(&e)) {
        if (e.type == SDL_EVENT_MOUSE_MOTION) {
            mouse_x = (float)e.motion.x;
            mouse_y = (float)e.motion.y;
        } else if (e.type == SDL_EVENT_MOUSE_BUTTON_DOWN) {
            if (e.button.button == SDL_BUTTON_LEFT) {
                mouse_clicked = true;
            }
        } else if (e.type == SDL_EVENT_KEY_DOWN) {
            switch (e.key.key) {
                case SDLK_DOWN:
		    std::cout << "Selected: " << selected << std::endl; 
                    selected = (selected + 1) % options.size();
                    break;
                case SDLK_UP:
                    selected = (selected - 1 + options.size()) % options.size();
                    break;
                case SDLK_RETURN:
                case SDLK_KP_ENTER:
                    return static_cast<MenuState>(selected);
                case SDLK_ESCAPE:
                    return MenuState::QUIT;
            }
        } else if (e.type == SDL_EVENT_QUIT) {
            return MenuState::QUIT;
        }
	int hovered = -1;

	for (size_t i = 0; i < options.size(); ++i) {
	    float option_x = 100.0f;
	    float option_y = 500.0f - i * 40.0f;
	    float option_w = 300.0f;  // approximate width
	    float option_h = 30.0f;
	
	    if (mouse_x >= option_x && mouse_x <= option_x + option_w &&
	        mouse_y >= option_y && mouse_y <= option_y + option_h) {
	        hovered = i;
	        selected = i;
	    }
	}
	for (size_t i = 0; i < options.size(); ++i) {
	    render_text(options[i], 100.0f, 500.0f - i * 40.0f, 1.0f, selected == (int)i);
	}
	if (mouse_clicked && hovered != -1) {
	    return static_cast<MenuState>(hovered);
	}
        mouse_clicked = false;
    }

    return MenuState::MAIN_MENU;
}
