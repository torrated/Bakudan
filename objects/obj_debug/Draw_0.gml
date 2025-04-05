/// @description 

try{
	
with (obj_player)
{
	//draw_text(x,y-64,puntos);
}

with (obj_bomba)
{
	//for (var _i = 1; _i <= 15; _i++)
	//{

	//	draw_circle(x+(_i*obj_juego.tamano),y,3,false);
	//	draw_circle(x-(_i*obj_juego.tamano),y,3,false);
	//	draw_circle(x,y+(_i*obj_juego.tamano),3,false);
	//	draw_circle(x,y-(_i*obj_juego.tamano),3,false);
	//}
	//draw_text(x,y,string(x)+","+string(y));
}

with (obj_collider)
{
	//var _halign = draw_get_halign();
	//var _valign = draw_get_valign();
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_middle);
	//draw_text(x,y,string(x)+","+string(y));
	//draw_set_halign(_halign);
	//draw_set_valign(_valign);
}
	
}catch (_exception){
	show_message("Error en obj_debug.Draw: "+_exception.longMessage);}