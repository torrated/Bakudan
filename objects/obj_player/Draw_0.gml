/// @description 

switch (estado)
{
	case ESTADO_PLAYER.NORMAL:		draw_self(); break;
	case ESTADO_PLAYER.ESPECIAL:	if ((duracion_parpadeo mod 30)<15)
									{
										shader_set(shader_pinta_azul);
										draw_self();
										shader_reset();
									}
									else
										draw_self();
									break;
}