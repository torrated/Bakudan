/// @description 

try{
	
var _numero_enemigos = instance_number(obj_enemigo);

if (_numero_enemigos == 0 && !shader_activado)
{
	if (place_meeting(x,y,obj_collider_destruible))
	{
		var _instancia = collision_point(x,y,obj_collider_destruible,false,true);
		_instancia.activa_shader = true;
		shader_activado = true;
	}
}


}catch (_exception){
	show_message("Error en obj_salida.Step: "+_exception.longMessage);}