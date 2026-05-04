timer++

if(x < o_enc_soul.x - 15) {
	instance_create_depth(x, y, depth - 1, obj_particle, {
		sprite: spr_pixel_explosion
	})
	audio_play(snd_rudebuster_hit)
	instance_destroy()
}