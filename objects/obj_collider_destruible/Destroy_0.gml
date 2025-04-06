/// @description 

try{

randomize();

if (irandom(100) <= probabilidad)
	instance_create_layer(x,y,"Bolitas",obj_fruta);

}catch (_exception){
	show_message("Error en obj_collider_destruible.Destroy: "+_exception.longMessage);}