/// @description 

try{

if (estado == ESTADO_ITEM.NORMAL)
	draw_self();
else
{
	shader_set(shader_parpadeo_rojo);
	shader_set_uniform_f(parpadeo,(duracion_actual mod 30)<15);
	draw_self();
	shader_reset();
}


}catch (_exception){
	show_message("Error en obj_fruta.Draw: "+_exception.longMessage);}