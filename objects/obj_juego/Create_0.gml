/// @description 
try{
	
enum ESTADO_JUEGO
{
	NORMAL,
	PAUSA
};

estado = ESTADO_JUEGO.NORMAL;

}catch (_exception){
	show_message("Error en obj_juego.Create: "+_exception.longMessage);}
	