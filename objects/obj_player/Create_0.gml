/// @description

try{

velocidad = 3;

movex = 0;
movey = 0;
boton = 0;
next_x = 0;
next_y = 0;

numero_maximo_bombas = 1;
numero_bombas = 0;

puntos = 0;

sprite_quieto = spr_player_quieto;
sprite_andando = spr_player_andando;
sprite_muerto = spr_player_muerto;

enum ESTADO_PLAYER
{
	NORMAL,
	ESPECIAL
}
estado = ESTADO_PLAYER.NORMAL;

duracion_parpadeo_maxima = 60*5;//5 segundos
duracion_parpadeo = 0;

struct_posiciones = scr_check_posiciones(self);

sombra = instance_create_layer(x,y,"Sombras",obj_sombra);
sombra.follow = self;
sombra.offset = 32;
sombra.image_yscale = 0.25;

}catch (_exception){
	show_message("Error en obj_player.create: "+_exception.longMessage);}
	