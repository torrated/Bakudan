/// @description 

try{
	
puntos = 10;

sombra = instance_create_layer(x,y,"Sombras",obj_sombra);
sombra.follow = self;
sombra.offset = 8;
sombra.image_xscale = 0.37;
sombra.image_yscale = 0.25;

}catch (_exception){
	show_message("Error en obj_bolita.Draw: "+_exception.longMessage);}