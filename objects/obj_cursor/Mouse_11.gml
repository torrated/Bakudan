
try{

if (obj_menu_principal.estado == ESTADO_MENU.MENU)
{
	mouse_over = false;
}

}catch (_exception){
	show_message("Error en obj_cursor.mouseLeave: "+_exception.longMessage);}