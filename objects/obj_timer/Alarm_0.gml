/// @description 
try{

if (timer <= 0)
	timer = 0;
else
{
	timer -= 1;
	alarm[0] = refresco_alarma;
}

}catch (_exception){
	show_message("Error en obj_timer.Alarm0: "+_exception.longMessage);}
	