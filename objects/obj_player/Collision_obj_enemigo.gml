/// @description 

try{
	
if (estado <> ESTADO_PLAYER.ESPECIAL)
	instance_destroy(self,true);
else
{
	puntos += other.puntos;
	instance_destroy(other,true);
}

}catch (_exception){
	show_message("Error en obj_player.ColisionObj_Enemigo: "+_exception.longMessage);}