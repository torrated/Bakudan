//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 my_colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float _suma = (my_colour.r + my_colour.g + my_colour.b)/3.0;
    gl_FragColor = vec4(_suma,_suma,1.0,my_colour.a);
}
