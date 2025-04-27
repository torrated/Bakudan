try{

mouse_over = false;
enum ACCIONES {
	UNO,
	DOS
};

accion = -1;
menu = 1;

}catch (_exception){
	show_message("Error en obj_cursor.create: "+_exception.longMessage);}