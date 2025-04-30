/// @description 
try{

instance_destroy(sombra,true);
audio_play_sound(snd_pickup_bolita,1,false,1,0,random_range(0.95,1.05));

}catch (_exception){
	show_message("Error en obj_bolita.Draw: "+_exception.longMessage);}
	