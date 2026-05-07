fade_out = 10
fade_radius = charge

if(charge == 30 && !tutorial_done) {
	tutorial_done = true
	o_enc_soul.image_blend = c_orange
	o_enc.tp = 90
}
if(instance_exists(o_bullet_eram)) {
	if(point_distance(x, y, o_bullet_eram.x, o_bullet_eram.y) < charge + 5) {
		with(o_bullet_eram) {
			if(opacity == 1) {
				opacity = 0.55
				hp--
				audio_play(snd_damage)
			}
		}
		
		o_enc.tp += 5
	}
}

charge = 0