/// @description 

try{

if (portal_activado && point_distance(x,y,other.x,other.y) <= 32)
	obj_juego.estado = ESTADO_JUEGO.COMPLETE;

}catch (_exception){
	show_message("Error en obj_salida.ColisionObjPlayer: "+_exception.longMessage);}