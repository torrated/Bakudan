/// @description

try{

movex = keyboard_check(ord("D")) - keyboard_check(ord("A"));
movey = keyboard_check(ord("S")) - keyboard_check(ord("W"));
boton = keyboard_check_pressed(vk_space);

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


}catch (_exception){
	show_message("Error en obj_player.Step: "+_exception.longMessage);}
	