/// @description 

try{

if (instance_exists(obj_juego))
{
	if (obj_juego.estado == ESTADO_JUEGO.NORMAL)
	{
		if (path_speed == 0)
			path_speed = velocidad;
		if (instance_exists(obj_player) && obj_player.estado == ESTADO_PLAYER.ESPECIAL)
			estado = ESTADO_ENEMIGO.HUYENDO;
		else
			estado = ESTADO_ENEMIGO.NORMAL;

		if (estado == ESTADO_ENEMIGO.NORMAL)
		{
			if (instance_exists(obj_player) && mp_grid_path(obj_mpgrid.grid, path, x, y, obj_player.x, obj_player.y, false))
				path_start(path, velocidad, path_action_reverse, false);
			else
				if (round(x) == round(destino_x) && round(y) == round(destino_y))
				{
					var _destino = scr_buscar_destino_aleatorio(x,y,direccion);
					destino_x = _destino[0];
					destino_y = _destino[1];
					direccion = _destino[2];
					
					mp_grid_path(obj_mpgrid.grid, path, x, y, destino_x, destino_y, false);
					path_start(path, velocidad, path_action_stop, false);
				}
		}
	}
	else
		path_speed = 0;
}

}catch (_exception){
	show_message("Error en obj_enemigo.Step: "+_exception.longMessage);}