/// @description 

try{

if (instance_exists(obj_juego) && obj_juego.estado == ESTADO_JUEGO.PAUSA)
{
	draw_self();
}
if (instance_exists(obj_menu_principal) && obj_menu_principal.estado == ESTADO_MENU.MENU && visible)
	draw_self();


}catch (_exception){
	show_message("Error en obj_volumen.Draw: "+_exception.longMessage);}
