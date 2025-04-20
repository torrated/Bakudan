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
estado_anterior = ESTADO_ENEMIGO.NORMAL;

puntos = 1000;

struct_posiciones = scr_check_posiciones(self);

sombra = instance_create_layer(x,y,"Sombras",obj_sombra);
sombra.follow = self;
sombra.offset = 50;
sombra.image_xscale = 1.5;
sombra.image_yscale = 0.25;

}catch (_exception){
	show_message("Error en obj_enemigo.Create: "+_exception.longMessage);}