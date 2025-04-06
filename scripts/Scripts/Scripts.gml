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


function scr_buscar_destino_aleatorio(_x,_y,_origen){
try{

// true significa que se puede ir
var _izq = !position_meeting(_x-obj_juego.tamano,_y,obj_collider);
var _der = !position_meeting(_x+obj_juego.tamano,_y,obj_collider);
var _arr = !position_meeting(_x,_y-obj_juego.tamano,obj_collider);
var _abj = !position_meeting(_x,_y+obj_juego.tamano,obj_collider);

var _direcciones = []; // 0:der; 90:arr; 180:izq; 270:abj

if (_izq && _origen <> 0) array_insert(_direcciones,-1,180);
if (_der && _origen <> 180) array_insert(_direcciones,-1,0);
if (_arr && _origen <> 270) array_insert(_direcciones,-1,90);
if (_abj && _origen <> 90) array_insert(_direcciones,-1,270);

var _direccion = 0;
if (array_length(_direcciones) = 0) //significa que solo puede volver por donde ha venido
	_direccion = (_origen+180) mod 360;
else
{
	randomize();
	_direcciones = array_shuffle(_direcciones);
	_direccion = _direcciones[0];
}

var _destino = [];
switch(_direccion)
{
	case 0:		_destino = [_x+obj_juego.tamano,_y,_direccion]; break;
	case 90:	_destino = [_x,_y-obj_juego.tamano,_direccion]; break;
	case 180:	_destino = [_x-obj_juego.tamano,_y,_direccion]; break;
	case 270:	_destino = [_x,_y+obj_juego.tamano,_direccion]; break;
}
return _destino;

}catch (_exception){
	show_message("Error en Scripts.scr_buscar_destino_aleatorio: "+_exception.longMessage);}
}