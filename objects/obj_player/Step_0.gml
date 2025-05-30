/// @description

try{

struct_posiciones = scr_check_posiciones(self);

if (instance_exists(obj_juego) && obj_juego.estado == ESTADO_JUEGO.NORMAL)
{
	var control = 0;
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
	
	if (estado == ESTADO_PLAYER.ESPECIAL)
	{
		duracion_parpadeo += 1;
		if (duracion_parpadeo >= duracion_parpadeo_maxima)
		{
			duracion_parpadeo = 0;
			estado = ESTADO_PLAYER.NORMAL;
		}
	}
	
// SPRITES
	if (movex <> 0 || movey <> 0)
		sprite_index = sprite_andando;
	else
		sprite_index = sprite_quieto;
	if (movex > 0)
		image_xscale = 1;
	if (movex < 0)
		image_xscale = -1;
}

}catch (_exception){
	show_message("Error en obj_player.Step: "+_exception.longMessage);}
	