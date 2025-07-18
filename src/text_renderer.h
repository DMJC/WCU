#pragma once

#include <string>

void init_text_renderer(unsigned int screenWidth, unsigned int screenHeight);
void shutdown_text_renderer();
void render_text(const std::string& text, float x, float y, float scale = 1.0f, bool highlight = false);
