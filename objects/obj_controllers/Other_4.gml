/// @description 

try{
	
controles = [
{ //teclado
	eje_x:  0,
	eje_y:  0,
	boton: 0,
},
{ //gamepad1
	eje_x:  0,
	eje_y:  0,
	boton: 0
},
{ //gamepad2
	eje_x:  0,
	eje_y:  0,
	boton: 0
}
];

}catch (_exception){
	show_message("Error en obj_controllers.RoomStart: "+_exception.longMessage);}