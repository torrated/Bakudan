/// @description 

try{

obj_juego.estado = ESTADO_JUEGO.GAME_OVER;
audio_play_sound(snd_gameover,1,false);
instance_destroy(sombra,true);
var _copia = instance_copy(true);
_copia.sprite_index = sprite_muerto;

}catch (_exception){
	show_message("Error en obj_player.Destroy: "+_exception.longMessage);}