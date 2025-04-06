/// @description 

try{

grid = noone;
fnc_actualizar_grid();

}catch (_exception){
	show_message("Error en obj_mpgrid.Create: "+_exception.longMessage);}

function fnc_actualizar_grid()
{
	try{
		
	with (grid)
		mp_grid_destroy(self);
	grid = mp_grid_create(obj_juego.tamano_borde,obj_juego.tamano_borde,int64(room_width/obj_juego.tamano),int64(room_height/obj_juego.tamano),obj_juego.tamano,obj_juego.tamano);
	
	mp_grid_add_instances(grid, obj_collider, true);
	
	}catch (_exception){
	show_message("Error en obj_mpgrid.fnc_actualizar_grid(): "+_exception.longMessage);}
}