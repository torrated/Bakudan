/// @description 
try{
	
enum ESTADO_JUEGO
{
	NORMAL,
	PAUSA
};

estado = ESTADO_JUEGO.NORMAL;

tamano_pasillo = 80;//en pixels
tamano_borde = 16; //en pixels
tamano_muros = 64; //en pixels
tamano = (tamano_pasillo+tamano_muros)/2;

instance_create_layer(obj_inicio_player1.x,obj_inicio_player1.y,"Instances",obj_player);
scr_rellenar_bolitas();

var _numero_destruibles = instance_number(obj_collider_destruible);
randomize();
salida = instance_find(obj_collider_destruible,irandom_range(0,_numero_destruibles-1));
instance_create_layer(salida.x,salida.y,"Salida",obj_salida);

}catch (_exception){
	show_message("Error en obj_juego.Create: "+_exception.longMessage);}
	