/// @description 

try{

//draw_text(mouse_x,mouse_y+16,string(mouse_x)+","+string(mouse_y));


with (obj_player)
{
	//draw_text(x+obj_juego.tamano,y,struct_posiciones.der);
	//draw_text(x-obj_juego.tamano,y,struct_posiciones.izq);
	//draw_text(x,y+obj_juego.tamano,struct_posiciones.abj);
	//draw_text(x,y-obj_juego.tamano,struct_posiciones.arr);

}

with (obj_bomba)
{

}

with (obj_collider)
{

}

with (obj_enemigo)
{
	//draw_text(x+obj_juego.tamano,y,direction);
}

with (obj_volumen)
{
	//draw_text(mouse_x,mouse_y,string(obj_volumen.x)+","+string(obj_volumen.y));
}

}catch (_exception){
	show_message("Error en obj_debug.Draw: "+_exception.longMessage);}