/// @description 

try{

duracion_maxima = 10*60; //10 segundos
duracion_actual = 0;
duracion_parpadeo = duracion_maxima-(3*60); //parpadea cuando queden 3 segundos

y -= 8; // para reajustalo visualmente

enum ESTADO_ITEM
{
	NORMAL,
	PARPADEO
}
estado = ESTADO_ITEM.NORMAL;

sombra = instance_create_layer(x,y+42,"Sombras",obj_sombra);
sombra.follow = self;
sombra.image_yscale = 0.25;
sombra.quieta = true;

}catch (_exception){
	show_message("Error en obj_fruta.Create: "+_exception.longMessage);}