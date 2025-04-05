/// @description

try{

if (instance_exists(obj_controllers) && obj_controllers.escape)
	switch(estado)
	{
		case ESTADO_JUEGO.NORMAL:	estado = ESTADO_JUEGO.PAUSA; break;
		case ESTADO_JUEGO.PAUSA:	estado = ESTADO_JUEGO.NORMAL; break;
	}

}catch (_exception){
	show_message("Error en obj_juego.Step: "+_exception.longMessage);}