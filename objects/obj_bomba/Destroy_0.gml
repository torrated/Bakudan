/// @description 

try{

effect_create_layer(layer,ef_explosion,x,y,1,c_white);

var _lista = ds_list_create();
var _resultado = collision_circle_list(x,y,radio_explosion,objetos_destruibles,true,true,_lista,true);

for (var _i = 0; _i < ds_list_size(_lista); _i++)
{
	var _instancia = ds_list_find_value(_lista,_i);
	instance_destroy(_instancia,true);
}
player.numero_bombas -= 1;

}catch (_exception){
	show_message("Error en obj_bomba.Destroy: "+_exception.longMessage);}