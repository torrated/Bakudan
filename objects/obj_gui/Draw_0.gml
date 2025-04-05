/// @description 

try{

if (instance_exists(obj_juego) && obj_juego.estado == ESTADO_JUEGO.PAUSA)
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"PAUSE");
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
}

}catch (_exception){
	show_message("Error en obj_gui.Draw: "+_exception.longMessage);}
