/// @description 

try{
	
velocidad = obj_player.velocidad / 2;
direccion = choose(0,90,180,270); //direccion inicial aleatoria
var _destino = scr_buscar_destino_aleatorio(x,y,direccion);
destino_x = _destino[0];
destino_y = _destino[1];
direccion = _destino[2];

path = path_add();
if (instance_exists(obj_player) && mp_grid_path(obj_mpgrid.grid, path, x, y, obj_player.x, obj_player.y, false))
	path_start(path, velocidad, path_action_reverse, false);
else
{
	mp_grid_path(obj_mpgrid.grid, path, x, y, destino_x, destino_y, false);
	path_start(path, velocidad, path_action_stop, false);
}

enum ESTADO_ENEMIGO
{
	NORMAL,
	HUYENDO
}
estado = ESTADO_ENEMIGO.NORMAL;

puntos = 1000;

}catch (_exception){
	show_message("Error en obj_enemigo.Create: "+_exception.longMessage);}