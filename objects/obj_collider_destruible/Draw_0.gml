/// @description 

try{
	
if !(activa_shader)
	draw_self();
else
{
	shader_set(shader_parpadeo_amarillo);
	shader_set_uniform_f(parpadeo,valor mod valor_maximo < valor_medio);
	draw_self();
	shader_reset();
}

}catch (_exception){
	show_message("Error en obj_collider_destruible.Draw: "+_exception.longMessage);}