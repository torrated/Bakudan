/// @description 

try{

if (instance_exists(obj_juego) && obj_juego.estado == ESTADO_JUEGO.NORMAL)
{
	if (duracion_actual >= duracion_parpadeo)
		estado = ESTADO_ITEM.PARPADEO;

	if (duracion_actual >= duracion_maxima)
		instance_destroy(self,true);
	else
		duracion_actual += 1;
	
	if (duracion_actual mod 60 < 30)
		y += 0.5;
	else
		y -= 0.5;
}

}catch (_exception){
	show_message("Error en obj_fruta.Step: "+_exception.longMessage);}