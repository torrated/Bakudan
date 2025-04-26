try{

shader_set(shader_alpha);
shader_set_uniform_f(my_alpha,valor_alpha);
draw_self();
shader_reset();

draw_sprite_ext(spr_texto_game_by,0,x,y-100,1,1,0,c_white,valor_alpha);

}catch (_exception){
	show_message("Error en obj_logo.Draw: "+_exception.longMessage);}