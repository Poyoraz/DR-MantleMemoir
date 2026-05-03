if(instance_exists(o_enc_soul)) {
	timer++
	
	if(timer < 15) {
		move_towards_point(first_goal_x, first_goal_y, 2)
	}
	
	if(timer == 25) {
		move_towards_point(
			o_enc_soul.x + irandom_range(-10, 10), 
			o_enc_soul.y + irandom_range(-10, 10), 
			no_after_image ? 5 : 7
		)
		
		audio_play(no_after_image ? snd_mercyadd : snd_deathnoise)
	}
	
	if(timer > 25 && timer < 30) {
		after_image_distance += 2
	}
}
