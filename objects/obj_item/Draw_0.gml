/// @description 

try{

if (estado == ESTADO_ITEM.NORMAL)
	draw_self();
else
{
	if ((duracion_actual mod 30)<15)
	{
		shader_set(shader_pinta_rojo);
		draw_self();
		shader_reset();
	}
	else
		draw_self();
}


}catch (_exception){
	show_message("Error en obj_item.Draw: "+_exception.longMessage);}