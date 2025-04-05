function scr_rellenar_bolitas(){
try{

var _inicial = 56;
var _x = _inicial;
var _y = _inicial;

while (_y < room_height)
{
	while (_x < room_width)
	{
		if !(position_meeting(_x,_y,all))
			instance_create_layer(_x,_y,"Bolitas",obj_bolita);
		_x += obj_juego.tamano;
	}
	_x = _inicial;
	_y += obj_juego.tamano;
}

}catch (_exception){
	show_message("Error en Scripts.scr_rellenar_bolitas: "+_exception.longMessage);}
}