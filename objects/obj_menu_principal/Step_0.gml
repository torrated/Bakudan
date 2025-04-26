try{

if (estado == ESTADO_MENU.LOGO && !instance_exists(obj_logo))
{
	estado = ESTADO_MENU.MENU;
	layer_set_visible("Background",false);
	
	audio_play_sound(snd_musica_1,1,true,0.5*(obj_volumen.volumen/obj_volumen.volumen_maximo));
}

}catch (_exception){
	show_message("Error en obj_menu_principal.step: "+_exception.longMessage);}