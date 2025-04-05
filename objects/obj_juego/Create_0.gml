/// @description 
try{
	
enum ESTADO_JUEGO
{
	NORMAL,
	PAUSA
};

estado = ESTADO_JUEGO.NORMAL;

tamano_pasillo = 80;//en pixels
tamano_borde = 16; //en pixels
tamano_muros = 64; //en pixels
tamano = (tamano_pasillo+tamano_muros)/2;

scr_rellenar_bolitas();

}catch (_exception){
	show_message("Error en obj_juego.Create: "+_exception.longMessage);}
	