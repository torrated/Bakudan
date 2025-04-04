/// @description 

try {
	
tiempo_maximo = 3 * 60; // 3 segundos
tiempo_actual = 0;

parpadeo_maximo = 30;
parpadeo_actual = 0;
parpadeo_boolean = true;

alarm[0] = 1;

player = noone;

parpadeo = shader_get_uniform(shader_parpadeo_rojo,"valor");

}catch (_exception){
	show_message("Error en obj_bomba.create: "+_exception.longMessage);}
	