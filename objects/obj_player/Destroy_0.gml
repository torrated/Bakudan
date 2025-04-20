/// @description 

try{

obj_juego.estado = ESTADO_JUEGO.GAME_OVER;
instance_destroy(sombra,true);

}catch (_exception){
	show_message("Error en obj_player.Destroy: "+_exception.longMessage);}