/// @description 

try{

if (layer_exists("shake"))
	layer_set_visible("shake",true);

alarm[0] = 15; // medio segundo

}catch (_exception){
	show_message("Error en obj_shake.Create: "+_exception.longMessage);}