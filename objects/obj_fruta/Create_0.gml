/// @description 

try{

duracion_maxima = 10*60; //10 segundos
duracion_actual = 0;
duracion_parpadeo = duracion_maxima-(3*60); //parpadea cuando queden 3 segundos

enum ESTADO_ITEM
{
	NORMAL,
	PARPADEO
}
estado = ESTADO_ITEM.NORMAL;

}catch (_exception){
	show_message("Error en obj_fruta.Create: "+_exception.longMessage);}