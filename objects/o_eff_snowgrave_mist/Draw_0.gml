draw_set_alpha(image_alpha/2)
draw_set_color(c_aqua)
var guix=guipos_x()
var guiy=guipos_y()
draw_line_width_color(guix+160,guiy,guix+160,guiy+240,320,c_white,c_blue)
draw_set_alpha(1)
for (var i = -64; i < 10; i++)
{
	for (var ii = -64; ii < 10; ii++)
	{
		draw_sprite_ext(spr_eff_snowfall,0,x+(64*i)-16,y+(64*ii)-32,1,1,0,c_white,image_alpha/2)
		draw_sprite_ext(spr_eff_snowfall,0,x+(64*i),y+(64*ii),1,1,0,c_white,image_alpha)
	}
}