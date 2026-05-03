if(instance_exists(o_enc_soul)) {
	timer++
	
	if(timer == 10) {
		move_towards_point(
			o_enc_soul.x, 
			o_enc_soul.y, 
			4
		)
		
		audio_play(snd_crow)
	}
	
	if(timer > 15 && timer < 45 && (point_distance(x, y, o_enc_soul.x, o_enc_soul.y) > 40)) {
		var _dir_goal = point_direction(
			x, y,
			o_enc_soul.x, 
			o_enc_soul.y
		)
		
		if _dir_goal > 180 {
			_dir_goal -= 360
		}
		
		direction = scr_ease_value_angle(direction, _dir_goal, 1)
	}
	
	if(timer > 15 && timer < 25) {
		after_image_distance += 1
	}
}

image_angle = direction
