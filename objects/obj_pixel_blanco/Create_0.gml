/// @description 

try{

	image_xscale = room_width;
	image_yscale = room_height;
	alarm[0] = 1;

}catch (_exception){
	show_message("Error en obj_pixelblanco.create: "+_exception.longMessage);}