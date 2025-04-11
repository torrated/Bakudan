/// @description 

try{

if (instance_exists(obj_juego) && obj_juego.estado <> ESTADO_JUEGO.NORMAL)
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	switch(obj_juego.estado)
	{
		case ESTADO_JUEGO.PAUSA: draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"PAUSE"); break;
		case ESTADO_JUEGO.GAME_OVER: draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"GAME OVER"); break;
		case ESTADO_JUEGO.COMPLETE: draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"LEVEL COMPLETE"); break;
	}
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
}

#region SCORE PLAYER 1
if (instance_exists(obj_player))
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_text(puntuacion_player1.x,puntuacion_player1.y,"Player1\n"+string(obj_player.puntos));
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
}
#endregion

#region TIMER
if (instance_exists(obj_timer))
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_text(display_get_gui_width()/2,obj_juego.tamano_borde,string(obj_timer.timer));
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
}
#endregion

#region VERSION
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_text(puntuacion_player1.x,room_height-obj_juego.tamano_borde,"v0.2");
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
#endregion

}catch (_exception){
	show_message("Error en obj_gui.Draw: "+_exception.longMessage);}
