/// @description 

try{

if (estado == ESTADO_ENEMIGO.HUYENDO)
{
	shader_set(shader_pinta_azul);
	draw_self();
	shader_reset();
}
else
{
	draw_self();
}

}catch (_exception){
	show_message("Error en obj_enemigo.Draw: "+_exception.longMessage);}