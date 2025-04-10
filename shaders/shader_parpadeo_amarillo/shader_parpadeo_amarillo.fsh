//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 color_original = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float nuevo_azul = color_original.b/(color_original.r+color_original.g+color_original.b);
	float nuevo_rojo = color_original.r*(1.0+nuevo_azul);
	float nuevo_verde = color_original.g*(1.0+nuevo_azul);
    gl_FragColor = vec4(nuevo_rojo,nuevo_verde,nuevo_azul,color_original.a);
}
