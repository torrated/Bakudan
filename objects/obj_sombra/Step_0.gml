/// @description 

try{

if (instance_exists(follow))
{
	x = follow.x;
	if !(quieta)
		y = follow.y+offset;
}

}catch (_exception){
	show_message("Error en obj_sombra.Create: "+_exception.longMessage);}