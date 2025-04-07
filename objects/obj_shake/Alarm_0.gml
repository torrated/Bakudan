/// @description 

try{

if (layer_exists("shake"))
	layer_set_visible("shake",false);

}catch (_exception){
	show_message("Error en obj_shake.Alarm0: "+_exception.longMessage);}