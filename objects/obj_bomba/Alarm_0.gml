/// @description 

try{
	
if (tiempo_actual == tiempo_maximo)
{
	instance_destroy(self,true);
}
else
{
	tiempo_actual += 1;
	parpadeo_actual += 1;
	if (parpadeo_actual == parpadeo_maximo)
	{
		parpadeo_actual = 0;
		parpadeo_boolean = !parpadeo_boolean;
	}
	alarm[0] = 1;
}

}catch (_exception){
	show_message("Error en obj_bomba.Alarm0: "+_exception.longMessage);}
	