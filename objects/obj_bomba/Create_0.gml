/// @description 

try {
	
tiempo_maximo = 3 * 60; // 3 segundos
tiempo_actual = 0;

parpadeo_maximo = 15;
parpadeo_actual = 0;
parpadeo_boolean = true;

alarm[0] = 1;

player = noone;

parpadeo = shader_get_uniform(shader_parpadeo_rojo,"valor");

radio_explosion = 64;

objetos_destruibles = [obj_collider_destruible,obj_player];

}catch (_exception){
	show_message("Error en obj_bomba.create: "+_exception.longMessage);}
	