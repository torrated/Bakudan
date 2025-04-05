/// @description 

try{
	
eje_x = 0;
eje_y = 0;
ataque = 0;
escape = 0;
evento_controller = false;

gamepad1 = noone;
gamepad2 = noone;

player1 = noone;
player2 = noone;

if (gamepad_is_connected(0))
{
	gamepad1 = 0;
	gamepad_set_axis_deadzone(gamepad1, 0.2);
}
	
if (gamepad_is_connected(1))
{
	gamepad2 = 1;
	gamepad_set_axis_deadzone(gamepad2, 0.2);
}

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
	show_message("Error en obj_controllers.Create: "+_exception.longMessage);}