
try{

if (obj_menu_principal.estado == ESTADO_MENU.MENU)
{
	mouse_over = true;
}

}catch (_exception){
	show_message("Error en obj_cursor.mouseEnter: "+_exception.longMessage);}