/// @description 

try{

if (portal_activado)
	obj_juego.estado = ESTADO_JUEGO.COMPLETE;

}catch (_exception){
	show_message("Error en obj_salida.ColisionObjPlayer: "+_exception.longMessage);}