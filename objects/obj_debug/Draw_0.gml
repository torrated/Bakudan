/// @description 

try{
	
draw_text(mouse_x,mouse_y,string(mouse_x)+","+string(mouse_y));
with (obj_player)
{

}

with (obj_bomba)
{

}

with (obj_collider)
{

}

with (obj_enemigo)
{

}

}catch (_exception){
	show_message("Error en obj_debug.Draw: "+_exception.longMessage);}