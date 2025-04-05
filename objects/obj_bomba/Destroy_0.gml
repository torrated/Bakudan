/// @description 

try{

//efecto humo
effect_create_layer(layer,tipo_efecto,x,y,tamano_effecto,c_yellow);

for (var _i = 1; _i <= radio_explosion; _i++)
{
	var _instancia = noone;
	//eje x derecha
	var _x_der = x+(obj_juego.tamano * _i);
	if !(stop_x_pos)
	{
		if (position_meeting(_x_der,y,objetos_destruibles))
		{
			_instancia = collision_point(_x_der,y,objetos_destruibles,false,true);
			instance_destroy(_instancia,true);
			stop_x_pos = true;
		}
		else if (position_meeting(_x_der,y,obj_collider) && !position_meeting(_x_der,y,objetos_destruibles))
				stop_x_pos = true;
			else
				effect_create_layer(layer,tipo_efecto,_x_der,y,tamano_effecto,c_yellow);
	}
	
	//eje x izquierda
	var _x_izq = x-(obj_juego.tamano * _i);
	if !(stop_x_neg)
	{
		if (position_meeting(_x_izq,y,objetos_destruibles))
		{
			_instancia = collision_point(_x_izq,y,objetos_destruibles,false,true);
			instance_destroy(_instancia,true);
			stop_x_neg = true;
		}
		else if (position_meeting(_x_izq,y,obj_collider) && !position_meeting(_x_izq,y,objetos_destruibles))
				stop_x_neg = true;
			else
				effect_create_layer(layer,tipo_efecto,_x_izq,y,tamano_effecto,c_yellow);
	}
	
	//eje y arriba
	var _y_arr = y-(obj_juego.tamano * _i);
	if !(stop_y_neg)
	{
		if (position_meeting(x,_y_arr,objetos_destruibles))
		{
			_instancia = collision_point(x,_y_arr,objetos_destruibles,false,true);
			instance_destroy(_instancia,true);
			stop_y_neg = true;
		}
		else if (position_meeting(x,_y_arr,obj_collider) && !position_meeting(x,_y_arr,objetos_destruibles))
				stop_y_neg = true;
			else
				effect_create_layer(layer,tipo_efecto,x,_y_arr,tamano_effecto,c_yellow);
	}
	
	//eje y abajo
	var _y_abj = y+(obj_juego.tamano * _i);
	if !(stop_y_pos)
	{
		if (position_meeting(x,_y_abj,objetos_destruibles))
		{
			_instancia = collision_point(x,_y_abj,objetos_destruibles,false,true);
			instance_destroy(_instancia,true);
			stop_y_pos = true;
		}
		else if (position_meeting(x,_y_abj,obj_collider) && !position_meeting(x,_y_abj,objetos_destruibles))
				stop_y_pos = true;
			else
				effect_create_layer(layer,tipo_efecto,x,_y_abj,tamano_effecto,c_yellow);
	}
}

player.numero_bombas -= 1;

}catch (_exception){
	show_message("Error en obj_bomba.Destroy: "+_exception.longMessage);}