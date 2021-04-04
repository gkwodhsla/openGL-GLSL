#version 450

//in vec3 a_Position; //사용자 정의 입력 값
layout (location = 0) in vec3 a_Position;
//layout (location = 1) in vec3 b_Position;

//uniform float u_Scale;

void main()
{
	gl_Position = vec4(a_Position, 1); //OpenGL 고유의 출력 값
}
