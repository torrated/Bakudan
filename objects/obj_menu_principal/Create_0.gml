try{

instance_create_layer(display_get_gui_width()/2,display_get_gui_height()/2,layer,obj_logo);

enum ESTADO_MENU {
	LOGO,
	MENU
};
estado = ESTADO_MENU.LOGO;

audio_stop_all();
audio_group_load(audiogroup1);
audio_group_set_gain(audiogroup1,(obj_volumen.volumen/obj_volumen.volumen_maximo),0);

}catch (_exception){
	show_message("Error en obj_menu_principal.create: "+_exception.longMessage);}