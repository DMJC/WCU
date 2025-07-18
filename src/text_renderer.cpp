#include "text_renderer.h"
#include <glad/gl.h>
#include <stb/stb_image.h>
#include <iostream>
#include <vector>
#include <string>

static GLuint font_texture = 0;
static GLuint vao = 0, vbo = 0, shader = 0;
static unsigned int screen_width = 1280, screen_height = 720;

static const char* vertex_shader_src = R"(
#version 330 core
layout(location = 0) in vec2 aPos;
layout(location = 1) in vec2 aUV;
uniform vec2 uPos;
uniform vec2 uScale;
uniform vec2 uScreen; // ✅ Add this
out vec2 vUV;
void main() {
    vec2 scaled = aPos * uScale + uPos;
    vec2 ndc = vec2(
        scaled.x / (uScreen.x / 2.0) - 1.0,
        1.0 - scaled.y / (uScreen.y / 2.0)
    );
    gl_Position = vec4(ndc, 0.0, 1.0);
    vUV = aUV;
}
)";

static const char* fragment_shader_src = R"(
#version 330 core
in vec2 vUV;
out vec4 FragColor;

uniform sampler2D uFont;
uniform vec2 uCharUV;     // offset in texture
uniform vec2 uCharSize;   // size of each cell in texture
uniform bool uHighlight;

void main() {
    vec2 atlas_uv = uCharUV + vUV * uCharSize;
    vec4 tex = texture(uFont, atlas_uv);
    if (tex.r < 0.1) discard;
    vec3 color = uHighlight ? vec3(1.0, 1.0, 0.3) : vec3(1.0);
    FragColor = vec4(color, tex.r);
}
)";

static GLuint compile_shader(GLenum type, const char* src) {
    GLuint s = glCreateShader(type);
    glShaderSource(s, 1, &src, nullptr);
    glCompileShader(s);
    GLint success;
    glGetShaderiv(s, GL_COMPILE_STATUS, &success);
    if (!success) {
        char log[512];
        glGetShaderInfoLog(s, 512, nullptr, log);
        std::cerr << "Shader compile error:\n" << log << std::endl;
    }
    return s;
}

void init_text_renderer(unsigned int width, unsigned int height) {
    screen_width = width;
    screen_height = height;

    // Compile shaders
    GLuint vs = compile_shader(GL_VERTEX_SHADER, vertex_shader_src);
    GLuint fs = compile_shader(GL_FRAGMENT_SHADER, fragment_shader_src);
    shader = glCreateProgram();
    glAttachShader(shader, vs);
    glAttachShader(shader, fs);
    glLinkProgram(shader);
    glDeleteShader(vs);
    glDeleteShader(fs);

    // Load texture
    int w, h, ch;
//    unsigned char* data = stbi_load("assets/fonts/ascii_font.png", &w, &h, &ch, 4);
    unsigned char* data = stbi_load("/home/james/development/WCU/assets/fonts/ascii_font.png", &w, &h, &ch, 4);
    if (!data) {
        std::cerr << "Could not load ascii_font.png\n";
        return;
    } else {
//        std::cout << "Font loaded: " << w << "x" << h << " channels=" << ch << "\n";
    }

    glGenTextures(1, &font_texture);
    glBindTexture(GL_TEXTURE_2D, font_texture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, w, h, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    stbi_image_free(data);

    // Create VAO/VBO for a quad
    float quad[24] = {
        // pos     // uv
         0,  0,    0, 0,
         1,  0,    1, 0,
         1,  1,    1, 1,
         0,  0,    0, 0,
         1,  1,    1, 1,
         0,  1,    0, 1,
    };

    glGenVertexArrays(1, &vao);
    glGenBuffers(1, &vbo);
    glBindVertexArray(vao);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(quad), quad, GL_STATIC_DRAW);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)(2 * sizeof(float)));
    glBindVertexArray(0);
}

void shutdown_text_renderer() {
    glDeleteTextures(1, &font_texture);
    glDeleteVertexArrays(1, &vao);
    glDeleteBuffers(1, &vbo);
    glDeleteProgram(shader);
}

void render_text(const std::string& text, float x, float y, float scale, bool highlight) {
    glUseProgram(shader);
    glBindVertexArray(vao);
    glBindTexture(GL_TEXTURE_2D, font_texture);

    glUniform1i(glGetUniformLocation(shader, "uFont"), 0);
    glUniform1i(glGetUniformLocation(shader, "uHighlight"), highlight ? 1 : 0);
    glUniform2f(glGetUniformLocation(shader, "uScale"), 8.0f * scale, 12.0f * scale); // cell size
    glUniform2f(glGetUniformLocation(shader, "uScreen"), screen_width, screen_height);

    const float cell_size = 1.0f / 16.0f; // 16x16 grid

    for (size_t i = 0; i < text.length(); ++i) {
       unsigned char c = text[i];
        int row = c / 16;
        int col = c % 16;

        float u = col * cell_size;
        float v = row * cell_size;

        // Pass UVs to shader via vertex buffer or set as uniform if needed
        float charX = x + i * 9.0f * scale;
        glUniform2f(glGetUniformLocation(shader, "uPos"), charX, y);
        glUniform2f(glGetUniformLocation(shader, "uCharUV"), u, v);                    // ✅ offset
        glUniform2f(glGetUniformLocation(shader, "uCharSize"), cell_size, cell_size);  // ✅ per-cell size
        glDrawArrays(GL_TRIANGLES, 0, 6);
    }

    glBindVertexArray(0);
}
