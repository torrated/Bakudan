/// @description 

try{

struct_posiciones = scr_check_posiciones(self);

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
			estado_anterior = ESTADO_ENEMIGO.NORMAL;
			if (instance_exists(obj_player) && mp_grid_path(obj_mpgrid.grid, path, x, y, obj_player.x, obj_player.y, false))
				path_start(path, velocidad, path_action_reverse, false);
			else
				if (path_index == -1)
				{
					var _destino = scr_buscar_destino_aleatorio(x,y,direccion);
					destino_x = _destino[0];
					destino_y = _destino[1];
					direccion = _destino[2];
					
					mp_grid_path(obj_mpgrid.grid, path, x, y, destino_x, destino_y, false);
					path_start(path, velocidad, path_action_stop, false);
				}
		}
		
		if (estado == ESTADO_ENEMIGO.HUYENDO)
		{
			if (estado_anterior == ESTADO_ENEMIGO.NORMAL)
			{
				path_end();
				estado_anterior = ESTADO_ENEMIGO.HUYENDO;
			}
			else
			{
				if (!path_exists(path) || path_index == -1)
				{
					var _x = obj_juego.tamano_borde+(obj_juego.tamano_pasillo/2)+(obj_juego.tamano*(round(x/obj_juego.tamano)))-obj_juego.tamano;
					var _y = obj_juego.tamano_borde+(obj_juego.tamano_pasillo/2)+(obj_juego.tamano*(round(y/obj_juego.tamano)))-obj_juego.tamano;

					if !(struct_posiciones.der) struct_posiciones.dist_der =  point_distance(_x+obj_juego.tamano,y,obj_player.x,obj_player.y);
						else struct_posiciones.dist_der = 0;
					if !(struct_posiciones.izq) struct_posiciones.dist_izq =  point_distance(_x-obj_juego.tamano,y,obj_player.x,obj_player.y);
						else struct_posiciones.dist_izq = 0;
					if !(struct_posiciones.arr) struct_posiciones.dist_arr =  point_distance(_x,_y-obj_juego.tamano,obj_player.x,obj_player.y);
						else struct_posiciones.dist_arr = 0;
					if !(struct_posiciones.abj) struct_posiciones.dist_abj =  point_distance(_x,_y+obj_juego.tamano,obj_player.x,obj_player.y);
						else struct_posiciones.dist_abj = 0;
			
					var _max = max(struct_posiciones.dist_der,struct_posiciones.dist_izq,struct_posiciones.dist_arr,struct_posiciones.dist_abj);
					switch(_max)
					{
						case struct_posiciones.dist_der: destino_x = _x+obj_juego.tamano; destino_y = y; break;
						case struct_posiciones.dist_izq: destino_x = _x-obj_juego.tamano; destino_y = y; break;
						case struct_posiciones.dist_arr: destino_x = _x; destino_y= _y - obj_juego.tamano; break;
						case struct_posiciones.dist_abj: destino_x = _x; destino_y = _y + obj_juego.tamano; break;
					}
					mp_grid_path(obj_mpgrid.grid, path, x, y, destino_x, destino_y, false);
					path_start(path, velocidad, path_action_stop, false);
				}
			}
		}
	}
	else
		path_speed = 0;
	
	if (direction == 0)
		image_xscale = 1;
	if (direction == 270)
		image_xscale = -1;
}

}catch (_exception){
	show_message("Error en obj_enemigo.Step: "+_exception.longMessage);}