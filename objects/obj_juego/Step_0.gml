/// @description

try{

if (instance_exists(obj_controllers) && obj_controllers.escape)
	switch(estado)
	{
		case ESTADO_JUEGO.NORMAL:		estado = ESTADO_JUEGO.PAUSA; break;
		case ESTADO_JUEGO.PAUSA:		estado = ESTADO_JUEGO.NORMAL; break;
		case ESTADO_JUEGO.GAME_OVER:	game_restart(); break;
	}

if (instance_exists(obj_fruta))
	tiempo_ultima_fruta = 0;
else
	tiempo_ultima_fruta += 1;
	
// si no quedan destruibles pero quedan enemigos, se crean frutas aleatorias cada cierto tiempo
if (instance_number(obj_collider_destruible) == 0 && instance_number(obj_enemigo) > 0 && instance_number(obj_fruta) == 0)
{
	if (tiempo_ultima_fruta >= tiempo_trigger_fruta)
	{
		var _x = irandom_range(tamano_borde,display_get_gui_width()-tamano_borde);
		var _y = irandom_range(tamano_borde,display_get_gui_height()-tamano_borde);
		_x = tamano_borde+(tamano_pasillo/2)+(tamano*(round(_x/tamano)))-tamano;
		_y = tamano_borde+(tamano_pasillo/2)+(tamano*(round(_y/tamano)))-tamano;
		
		if !(place_meeting(_x,_y,all))
			instance_create_layer(_x,_y,"Bolitas",obj_fruta);
	}
}

}catch (_exception){
	show_message("Error en obj_juego.Step: "+_exception.longMessage);}