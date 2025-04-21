/// @description 
try{

randomize();

enum ESTADO_JUEGO
{
	NORMAL,
	PAUSA,
	GAME_OVER,
	COMPLETE
};

estado = ESTADO_JUEGO.NORMAL;

tamano_pasillo = 80;//en pixels
tamano_borde = 16; //en pixels
tamano_muros = 64; //en pixels
tamano = (tamano_pasillo+tamano_muros)/2;

radio_explosion = 1; //en casillas

instance_create_layer(obj_inicio_player1.x,obj_inicio_player1.y,"Instances",obj_player);
scr_rellenar_bolitas();

var _numero_destruibles = instance_number(obj_collider_destruible);
randomize();
salida = instance_find(obj_collider_destruible,irandom_range(0,_numero_destruibles-1));
instance_create_layer(salida.x,salida.y,"Salida",obj_salida);

tiempo_ultima_fruta = 0;
tiempo_trigger_fruta = 5*60; // 5 segundos

audio_play_sound(snd_musica_1,1,true,0.5);

}catch (_exception){
	show_message("Error en obj_juego.Create: "+_exception.longMessage);}
	