/// @description 

try{

#region TEXTO CENTRAL

if (instance_exists(obj_juego) && obj_juego.estado <> ESTADO_JUEGO.NORMAL)
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	switch(obj_juego.estado)
	{
		case ESTADO_JUEGO.PAUSA: draw_sprite(spr_texto_pause,0,display_get_gui_width()/2,display_get_gui_height()/2); break;
		case ESTADO_JUEGO.GAME_OVER: draw_sprite(spr_texto_game_over,0,display_get_gui_width()/2,display_get_gui_height()/2); break;
		case ESTADO_JUEGO.COMPLETE: draw_sprite(spr_texto_level_complete,0,display_get_gui_width()/2,display_get_gui_height()/2); break;
	}
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
}

#endregion

#region SCORE PLAYER 1
if (instance_exists(obj_player))
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_sprite(spr_texto_player,0,puntuacion_player1.x,puntuacion_player1.y);
	var _font = draw_get_font();
	draw_set_font(global.fnt_fuente_timer);
	draw_text_transformed(puntuacion_player1.x,puntuacion_player1.y+50,string(obj_player.puntos),0.67,0.67,0);
	
	draw_set_font(_font);
	draw_set_color(_color);
	draw_set_halign(_haligh);
}
#endregion

#region TIMER
if (instance_exists(obj_timer))
{
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	var _font = draw_get_font();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(global.fnt_fuente_timer);
	
	draw_text(obj_negro.x,2*obj_juego.tamano_borde,string(obj_timer.timer));
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
	draw_set_font(_font);
}
#endregion

#region VERSION
	var _color = draw_get_color();
	var _haligh = draw_get_halign();
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_text(puntuacion_player1.x,room_height-obj_juego.tamano_borde,"v0.4");
	
	draw_set_color(_color);
	draw_set_halign(_haligh);
#endregion

#region NUMERO DE NIVEL

draw_text(obj_negro.x,obj_negro.y,room_get_name(room));

#endregion
}catch (_exception){
	show_message("Error en obj_gui.Draw: "+_exception.longMessage);}
