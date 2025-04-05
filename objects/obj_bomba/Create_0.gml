/// @description 

try {

x = obj_juego.tamano_borde+(obj_juego.tamano_pasillo/2)+(obj_juego.tamano*(round(x/obj_juego.tamano)))-obj_juego.tamano;
y = obj_juego.tamano_borde+(obj_juego.tamano_pasillo/2)+(obj_juego.tamano*(round(y/obj_juego.tamano)))-obj_juego.tamano;

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
	