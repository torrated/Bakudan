/// @description 
try{

scr_dibuja_sombra(x-16,y+10,x+16,y+20);

if (parpadeo_actual mod parpadeo_maximo < (parpadeo_maximo/2))
{
	shader_set(shader_pinta_rojo);
	draw_self();
	shader_reset();
}
else
	draw_self();
	
}catch (_exception){
	show_message("Error en obj_bomba.draw: "+_exception.longMessage);}