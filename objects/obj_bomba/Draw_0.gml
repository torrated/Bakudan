/// @description 

if (parpadeo_actual mod parpadeo_maximo < (parpadeo_maximo/2))
{
	shader_set(shader_pinta_rojo);
	draw_self();
	shader_reset();
}
else
	draw_self();