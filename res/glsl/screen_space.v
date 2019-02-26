#version 330 core

uniform mat4 u_mvp;

layout (location = 0) in vec2 a_position;

out vec2 v_texture;

void main() 
{
        vec4 position = u_mvp * vec4(a_position, 0.0, 1.0);

        v_texture = position.xy * 0.5 + 0.5;

	gl_Position = position;
}