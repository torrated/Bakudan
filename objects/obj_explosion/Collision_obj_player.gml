/// @description 

try{
	
obj_juego.radio_explosion += 1;
instance_destroy(self,true);



}catch (_exception){
	show_message("Error en obj_bomba_adicional.ColisionObjPlayer: "+_exception.longMessage);}