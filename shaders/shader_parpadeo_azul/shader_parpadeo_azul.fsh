//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float valor;

void main()
{
	vec4 color_original = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor = vec4(color_original.r*valor,color_original.g*valor,1.0,color_original.a);
}
