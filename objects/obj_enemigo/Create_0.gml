/// @description 

try{
	
velocidad = obj_player.velocidad / 2;
destino_x = 632;
destino_y = 56;
direccion = 180;

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

}catch (_exception){
	show_message("Error en obj_enemigo.Create: "+_exception.longMessage);}