try{

if (obj_menu_principal.estado == ESTADO_MENU.MENU && mouse_over)
{
	draw_sprite(spr_bolita,0,x-(sprite_width/2)-sprite_get_width(spr_bolita),y);
}

	
}catch (_exception){
	show_message("Error en obj_cursor.Draw: "+_exception.longMessage);}