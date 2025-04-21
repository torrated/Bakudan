/// @description 

try{

puntuacion_player1 =
{
	x: obj_negro.x,
	y: 300
}

global.fnt_fuente_timer = font_add_sprite_ext(spr_fuente_timer, "1234567890", true, 1);

}catch (_exception){
	show_message("Error en obj_gui.Create: "+_exception.longMessage);}
