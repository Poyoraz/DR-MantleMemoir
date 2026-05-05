event_inherited()
if(!instance_exists(o_enc_soul)) return;

if(choose(true, false, false, false, false, false, false, false)) {
	
	with(o_actor_e_virovirokun) {
		var o = self
	
		instance_create_depth(x, y, DEPTH_ENCOUNTER.BULLETS_OUTSIDE, o_bullet_simple, {
			dir: random_range(135, 225),
			spd: irandom_range(2, 4)
		})
	}
}