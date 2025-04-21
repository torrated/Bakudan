//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 color_original = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	float gris = (color_original.r+color_original.g+color_original.b)/3.0;
    gl_FragColor = vec4(gris,color_original.g,gris,color_original.a);
}
