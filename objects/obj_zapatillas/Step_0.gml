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
}

}catch (_exception){
	show_message("Error en obj_zapatillas.Step: "+_exception.longMessage);}