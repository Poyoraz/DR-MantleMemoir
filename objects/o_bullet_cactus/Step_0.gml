if(instance_exists(o_enc_soul)) {
	timer++
	
	if(timer < 25) {
		return
	}
	
	if(timer % frequency == 0) {
		for(var _i = 0; _i < 180; _i += step_size) {
			instance_create_depth(x, y, depth - 1, o_bullet_cactus_spike, {
				dir: _i,
				spd: 3,
			})
		}
	}
	
	if(timer == 120) instance_destroy()
}
