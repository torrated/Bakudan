/// @description 

try{
	
if (instance_exists(obj_player) && mp_grid_path(obj_mpgrid.grid, path, x, y, obj_player.x, obj_player.y, false))
	path_start(path, velocidad, path_action_reverse, false);

}catch (_exception){
	show_message("Error en obj_enemigo.Step: "+_exception.longMessage);}