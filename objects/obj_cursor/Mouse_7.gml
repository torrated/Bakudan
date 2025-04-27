try{

if (obj_menu_principal.estado == ESTADO_MENU.MENU)
{
	var lay_id = layer_get_id("Fondo");
	var back_id = layer_background_get_id(lay_id);
	if (layer_background_get_sprite(back_id) == spr_portada_1)
		menu = 1;
	if (layer_background_get_sprite(back_id) == spr_portada_2)
		menu = 2;
		
	switch(accion)
	{
		case ACCIONES.UNO:	if (menu == 1)
								room_goto_next();
							if (menu == 2)
								obj_volumen.visible = true;
							break;
		case ACCIONES.DOS:	if (menu == 1)
								layer_background_sprite(back_id, spr_portada_2);
							if (menu == 2)
							{
								layer_background_sprite(back_id, spr_portada_1);
								obj_volumen.visible = false;
							}
							break;
	}
}

}catch (_exception){
	show_message("Error en obj_cursor.leftReleased: "+_exception.longMessage);}