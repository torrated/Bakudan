try{

if (valor_alpha >= 1)
{
	valor = -0.01;
	espera = 60;
}
else if (valor_alpha <= 0)
	instance_destroy(self,true);
else
	espera = 1;
	
valor_alpha += valor;

alarm[0] = espera;

}catch (_exception){
	show_message("Error en obj_logo.alarm0: "+_exception.longMessage);}