#include <glad/gl.h>
#include "menu.h"
#include "game.h"
#include "audio.h"
#include <iostream>
#include <SDL3/SDL.h>

void start_new_game() {
    std::cout << "Starting new game...\n";
    SDL_Delay(2000);
}

int main(int argc, char* argv[]) {
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) < 0) {
        SDL_Log("Failed to init SDL3: %s", SDL_GetError());
        return 1;
    }

    SDL_Window* window = SDL_CreateWindow("Space Sim", 1280, 720, SDL_WINDOW_OPENGL);
    SDL_GLContext gl_context = SDL_GL_CreateContext(window);
    if (!gladLoaderLoadGL()) {
        SDL_Log("Failed to initialize GLAD");
        return 1;
    }

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glClearColor(0.1f, 0.1f, 0.15f, 1.0f);
    glViewport(0, 0, 1280, 720);  // match your window size
    init_audio();

    bool running = true;
    MenuState menu_state = MenuState::MAIN_MENU;

    while (running) {
        MenuState result = show_main_menu();
    
        switch (result) {
            case MenuState::NEW_GAME:
                start_new_game(); // placeholder
                break;
            case MenuState::LOAD_GAME:
                // TODO: load_game();
                break;
            case MenuState::SETTINGS:
                    // TODO: settings_menu();
                break;
            case MenuState::QUIT:
                running = false;
                break;
            default:
                break;
        }
        SDL_GL_SwapWindow(window);
    }

    shutdown_audio();
    SDL_GL_DestroyContext(gl_context);
    SDL_DestroyWindow(window);
    SDL_Quit();
    return 0;
}
