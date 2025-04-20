/// @description 

try{

randomize();

if (irandom(100) <= probabilidad && x <> obj_salida.x && y <> obj_salida.y)
{
	instance_create_layer(x,y,"Bolitas",choose(obj_fruta,obj_zapatillas,obj_bomba_adicional,obj_explosion));
}

}catch (_exception){
	show_message("Error en obj_collider_destruible.Destroy: "+_exception.longMessage);}