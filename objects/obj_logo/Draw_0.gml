if(room != room_start_menu) {
	draw_set_alpha(0.05)
	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	
	draw_set_colour(c_dkgray)
	draw_set_font(font_main_mono)
	draw_text(
		room_width / 2,
		room_height / 2,
		"Made by PoyoPoyoraz"
	)
	
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_alpha(1)
	
	exit
}

for(var _i = 0; _i < 9; _i++) {
	timers[_i] += 8
	
	if(timers[_i] < 0) continue
	
	draw_sprite_ext(
		letters[_i],
		-1,
		x,
		y,
		2,
		2,
		0,
		make_colour_rgb(
			min(255, timers[_i] * 3),
			min(255, timers[_i] * 2),
			min(255, timers[_i] * 1)
		),
		1
	)
	
	if(timers[_i] > 255 && !sound_played[_i]) {
		sound_played[_i] = true
		audio_play_sound(snd_bump, 100, false, 1, 0, random_range(0.8, 1.2))
		
		if(array_all(sound_played, function(a) { return a })) {
			alarm[0] = 20
		}
	}
}

if(show_subtitle) {
	draw_sprite_ext(
		spr_subtitle,
		-1,
		x,
		y,
		1,
		1,
		0,
		c_white,
		1
	)
}

if(show_tip) {
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	
	draw_set_colour(c_dkgray)
	draw_set_font(font_main_mono)
	draw_text(
		x, y + 200,
		"[Press Z to start the game]"
	)
	
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
}

draw_set_colour(c_white)
draw_text(10, 10, timers)
draw_text(10, 30, sound_played)
