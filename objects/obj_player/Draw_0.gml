/// @description 

switch (estado)
{
	case ESTADO_PLAYER.NORMAL:	draw_self(); break;
	case ESTADO_PLAYER.ESPECIAL:
								shader_set(shader_parpadeo_azul);
								shader_set_uniform_f(parpadeo,(duracion_parpadeo mod 30)<15);
								draw_self();
								shader_reset();
								break;
}