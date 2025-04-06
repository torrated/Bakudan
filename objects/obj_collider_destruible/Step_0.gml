/// @description 

try{
	
if (activa_shader)
{
	valor += 1;
	if (valor >= valor_maximo)
		valor = 0;
}

}catch (_exception){
	show_message("Error en obj_collider_destruible.Step: "+_exception.longMessage);}