timer++
image_angle = floor(timer / 7) * 90

y += 4
	
if(y > o_enc.mybox.y + (o_enc.mybox.height / 2) + 10) {
	for(var _dir = 0; _dir < 360; _dir += 45) {
		instance_create(
			o_bullet_fire_with_pause,
			x,
			y,
			depth,
			{
				dir: _dir,
				pause_time: 45,
				spd: 3
			}
		)
	}

	audio_play(snd_noise)
	instance_create_depth(x, y, depth - 1, obj_particle, {
		sprite: spr_rock_break
	})		
	instance_destroy()
}
