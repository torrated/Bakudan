/// @description 

try{

depth = 10;
if (instance_exists(obj_juego) && obj_juego.estado == ESTADO_JUEGO.PAUSA)
{
	visible = true;
	x = display_get_gui_width()/2;
	y = (display_get_gui_height()/2)+64;
}
else if (instance_exists(obj_menu_principal) && obj_menu_principal.estado == ESTADO_MENU.MENU && visible)
{
	visible = true;
	x = 1012;
	y = 208;
}
else 
	visible = false;


}catch (_exception){
	show_message("Error en obj_volumen.Draw: "+_exception.longMessage);}
