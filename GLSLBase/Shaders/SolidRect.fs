#version 450

layout(location=0) out vec4 FragColor;

uniform vec4 u_color;

void main()
{
	FragColor = vec4(1,0,0,1);
	//FragColor=u_color;
}
