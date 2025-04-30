try{

my_alpha = shader_get_uniform(shader_alpha,"_alpha");
valor_alpha = 0.01;
valor = 0.01;
espera = 1;
alarm[0] = espera;

}catch (_exception){
	show_message("Error en obj_logo.create: "+_exception.longMessage);}