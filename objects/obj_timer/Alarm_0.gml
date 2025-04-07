/// @description 
try{

if (timer <= 0)
{
	timer = 0;
	obj_juego.estado = ESTADO_JUEGO.GAME_OVER;
}
else
{
	if (obj_juego.estado == ESTADO_JUEGO.NORMAL)
	{
		timer -= 1;
		alarm[0] = refresco_alarma;
	}
	else
		alarm[0] = 1;
}

}catch (_exception){
	show_message("Error en obj_timer.Alarm0: "+_exception.longMessage);}
	