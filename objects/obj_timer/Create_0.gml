/// @description 
try{

timer_maximo = 100;
timer = timer_maximo;
refresco_alarma = 60*2 ;// se actualiza cada 2 segundos
alarm[0] = refresco_alarma;
audio_played = false;

}catch (_exception){
	show_message("Error en obj_timer.Create: "+_exception.longMessage);}
	