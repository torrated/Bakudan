try{

//show_message("mouse_x:"+string(mouse_x)+" / x-(sprite_width/2):"+string(x-(sprite_width/2))+" / x-(sprite_width/2)+16:"+string(x-(sprite_width/2)+16));
if (mouse_x > x-(sprite_width/2) && mouse_x < x-(sprite_width/2)+16)
	volumen = clamp(volumen-1,0,volumen_maximo);
if (mouse_x < x+(sprite_width/2) && mouse_x > x+(sprite_width/2)-16)
	volumen = clamp(volumen+1,0,volumen_maximo);
	
image_index = volumen;
audio_group_set_gain(audiogroup1,(volumen/volumen_maximo),0);

}catch (_exception){
	show_message("Error en obj_volumen.leftreleased: "+_exception.longMessage);}