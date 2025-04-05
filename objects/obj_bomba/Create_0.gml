/// @description 

try {

x = obj_juego.tamano_borde+(obj_juego.tamano_pasillo/2)+(obj_juego.tamano*(round(x/obj_juego.tamano)))-obj_juego.tamano;
y = obj_juego.tamano_borde+(obj_juego.tamano_pasillo/2)+(obj_juego.tamano*(round(y/obj_juego.tamano)))-obj_juego.tamano;

tiempo_maximo = 3 * 60; // 3 segundos
tiempo_actual = 0;

parpadeo_maximo = 15;
parpadeo_actual = 0;
parpadeo_boolean = true;
parpadeo = shader_get_uniform(shader_parpadeo_rojo,"valor");

alarm[0] = 1;

player = noone;

radio_explosion = 3; //en casillas
tamano_effecto = 1;
tamano_effecto_2 = 1;
tipo_efecto = ef_smoke;
color_efecto = c_yellow;
color_efecto_2 = c_red;

objetos_destruibles = [obj_collider_destruible];
objetos_no_destruibles = [obj_collider,obj_enemigo];

stop_x_pos = false;
stop_x_neg = false;
stop_y_pos = false;
stop_y_neg = false;

}catch (_exception){
	show_message("Error en obj_bomba.create: "+_exception.longMessage);}
	