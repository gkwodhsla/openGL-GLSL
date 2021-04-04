#version 450

//in vec3 a_Position; //사용자 정의 입력 값
layout (location = 0) in vec3 a_Position;
in vec3 a_Velocity;
in float a_EmitTime;
in float a_LifeTime;
//layout (location = 1) in vec3 b_Position;

//uniform float u_Scale;

uniform float u_Time; //누적시간

const vec3 c_Gravity = vec3(0, -5, 0.0);

void main()
{

	float newTime = u_Time - a_EmitTime;
	vec3 newPos = a_Position;
	
	if(newTime<0.0)
	{
		newPos=vec3(99,99,0);
	}
	else
	{
		newTime=mod(newTime, a_LifeTime);
		float t = newTime;
		float tt = newTime * newTime;
		newPos += t * a_Velocity + 0.5 * c_Gravity * tt;
		
	}
	gl_Position = vec4(newPos, 1); //OpenGL 고유의 출력 값
	
}
