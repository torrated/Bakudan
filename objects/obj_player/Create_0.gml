/// @description

try{

velocidad = 3;

movex = 0;
movey = 0;
boton = 0;
next_x = 0;
next_y = 0;

numero_maximo_bombas = 1;
numero_bombas = 0;

puntos = 0;

enum ESTADO_PLAYER
{
	NORMAL,
	ESPECIAL
}
estado = ESTADO_PLAYER.NORMAL;

duracion_parpadeo_maxima = 60*5;//5 segundos
duracion_parpadeo = 0;

}catch (_exception){
	show_message("Error en obj_player.create: "+_exception.longMessage);}
	