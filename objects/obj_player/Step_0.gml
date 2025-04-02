/// @description

try{

movex = keyboard_check(ord("D")) - keyboard_check(ord("A"));
movey = keyboard_check(ord("S")) - keyboard_check(ord("W"));
boton = keyboard_check_pressed(vk_space);

x += velocidad*lengthdir_x(sqrt(sqr(movex)+sqr(movey)),point_direction(0,0,movex,movey))
y += velocidad*lengthdir_y(sqrt(sqr(movex)+sqr(movey)),point_direction(0,0,movex,movey))

}catch (_exception){
	show_message("Error en obj_player.Step: "+_exception.longMessage);}
	