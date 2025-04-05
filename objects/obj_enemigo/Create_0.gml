/// @description 

try{
	
path = path_add();
velocidad = obj_player.velocidad / 2;

enum ESTADO_ENEMIGO
{
	NORMAL,
	HUYENDO
}
estado = ESTADO_ENEMIGO.NORMAL;

}catch (_exception){
	show_message("Error en obj_enemigo.Create: "+_exception.longMessage);}