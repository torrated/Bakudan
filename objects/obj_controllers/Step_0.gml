/// @description 
try{
	
escape = keyboard_check_pressed(vk_escape);

if (gamepad_is_connected(0))
	gamepad1 = 0;
else
	gamepad1 = noone;

if (gamepad_is_connected(1))
	gamepad2 = 1;
else
	gamepad2 = noone;

controles = [
{ //teclado
	eje_x:  keyboard_check(ord("D")) - keyboard_check(ord("A")),
	eje_y:  keyboard_check(ord("S")) - keyboard_check(ord("W")),
	ataque: keyboard_check_pressed(vk_space)
},
{ //gamepad1
	eje_x:  gamepad_axis_value(gamepad1,gp_axislh),
	eje_y:  gamepad_axis_value(gamepad1,gp_axislv),
	ataque: gamepad_button_check_pressed(gamepad1,gp_face3)
},
{ //gamepad2
	eje_x:  gamepad_axis_value(gamepad2,gp_axislh),
	eje_y:  gamepad_axis_value(gamepad2,gp_axislv),
	ataque: gamepad_button_check_pressed(gamepad2,gp_face3)
}
];

}catch (_exception){
	show_message("Error en obj_controllers.Step: "+_exception.longMessage);}
//if (instance_exists(obj_menu))
//{
//	player1 = noone;
//	player2 = noone;
//}

//with (obj_menu) // asigna a cada jugador el control seleccionado en el menu
//{
//	if (opciones[0].posicion == 0)
//		other.player1 = 0;
//	if (opciones[0].posicion == 2)
//		other.player2 = 0;
	
//	if (opciones[1].posicion == 0)
//		other.player1 = 1;
//	if (opciones[1].posicion == 2)
//		other.player2 = 1;
	
//	if (opciones[2].posicion == 0)
//		other.player1 = 2;
//	if (opciones[2].posicion == 2)
//		other.player2 = 2;
//}