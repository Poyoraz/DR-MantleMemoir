if(instance_exists(o_enc_soul)) {
	timer++
	
	if(winddown == 0) {
		instance_create(o_bullet_hammer_buster, x, y, depth - 1)
		audio_play(snd_rudebuster_swing)
		winddown--
	}
	if(winddown-- > 0) return;
	
	var _hammer_goal = is_up ? 180 : 0
	
	hammer_angle = scr_ease_value(
		hammer_angle, 
		_hammer_goal,
		3,
		true
	)
	
	if(abs(hammer_angle - _hammer_goal) < 5) {
		is_up = !is_up
		sprite_index = is_up 
			? spr_hero_hammer_left_up
			: spr_hero_hammer_left_down
			
		winddown = 7
	}
}
