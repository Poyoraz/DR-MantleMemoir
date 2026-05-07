if(!tutorial_done) {
	draw_set_font(font_main)
	draw_set_colour(c_white)
	draw_text(
		x, 
		y - 20,
		keyboard_check(ord("Z"))
			? (charge != 30
				? "Keep holding"
				: "Release!"
			)
			: "Hold Z"
	)
}


if(charge > 0) {
	draw_set_colour(c_white)
	
	for(var _i = 0; _i < 2.5; _i += 0.5) {
		if(charge - _i <= 0) continue
		
		draw_circle(x, y, charge - _i, true)
	}
}

if(fade_out > 0) {	
	draw_set_alpha(fade_out * .1)
	
	draw_circle(x, y, fade_radius, false)
	
	fade_out--
	
	draw_set_alpha(1)
}