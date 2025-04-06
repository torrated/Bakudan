/// @description 

try{

if (instance_exists(obj_juego))
{
	if (obj_juego.estado <> ESTADO_JUEGO.PAUSA)
	{
		if (instance_exists(obj_player) && obj_player.estado == ESTADO_PLAYER.ESPECIAL)
			estado = ESTADO_ENEMIGO.HUYENDO;
		else
			estado = ESTADO_ENEMIGO.NORMAL;

		if (estado == ESTADO_ENEMIGO.NORMAL)
		{
			if (instance_exists(obj_player) && mp_grid_path(obj_mpgrid.grid, path, x, y, obj_player.x, obj_player.y, false))
				path_start(path, velocidad, path_action_reverse, false);
		}
	}
	else
		path_speed = 0;
}

}catch (_exception){
	show_message("Error en obj_enemigo.Step: "+_exception.longMessage);}