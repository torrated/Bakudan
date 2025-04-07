/// @description 

try{

estado = ESTADO_PLAYER.ESPECIAL;
instance_destroy(other,true);

}catch (_exception){
	show_message("Error en obj_player.CollisionObjFruta: "+_exception.longMessage);}