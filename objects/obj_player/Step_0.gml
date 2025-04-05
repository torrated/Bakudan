/// @description

try{

if (instance_exists(obj_juego) && obj_juego.estado <> ESTADO_JUEGO.PAUSA)
{
	var control=0;
	movex = obj_controllers.controles[control].eje_x;
	movey = obj_controllers.controles[control].eje_y;
	boton = obj_controllers.controles[control].boton;

	next_x = x + velocidad*lengthdir_x(sqrt(sqr(movex)+sqr(movey)),point_direction(0,0,movex,movey))
	next_y = y + velocidad*lengthdir_y(sqrt(sqr(movex)+sqr(movey)),point_direction(0,0,movex,movey))

	if (!place_meeting(next_x,y,obj_collider))
		x = next_x;
	if (!place_meeting(x,next_y,obj_collider))
		y = next_y;

	if (boton && numero_bombas < numero_maximo_bombas)
	{
		var _bomba = instance_create_layer(x,y,"Bombas",obj_bomba);
		_bomba.player = self;
		numero_bombas += 1;
	}
}

}catch (_exception){
	show_message("Error en obj_player.Step: "+_exception.longMessage);}
	