/// @description 

try{
	
if !(activa_shader)
	draw_self();
else
{
	if (valor mod valor_maximo < (valor_maximo/2))
	{
		shader_set(shader_pinta_amarillo);
		draw_self();
		shader_reset();
	}
	else
		draw_self();
}

}catch (_exception){
	show_message("Error en obj_collider_destruible.Draw: "+_exception.longMessage);}