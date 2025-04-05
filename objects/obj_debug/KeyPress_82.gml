/// @description activa y desactiva el estado especial

with (obj_player)
{
	if (estado == ESTADO_PLAYER.NORMAL)
		estado = ESTADO_PLAYER.ESPECIAL;
	else
		estado = ESTADO_PLAYER.NORMAL;
}