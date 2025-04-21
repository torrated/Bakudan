/// @description 

try{

if (sprite_index == sprite_muerto)
{
	image_speed = 0;
	image_index = image_number - 1;
}

}catch (_exception){
	show_message("Error en obj_player.AnimationEnd: "+_exception.longMessage);}