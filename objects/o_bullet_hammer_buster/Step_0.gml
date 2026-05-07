timer++

if(angle_difference(
	point_direction(x, y, o_enc_soul.x, o_enc_soul.y), 
	direction
) > 145) {
	instance_create_depth(x, y, depth - 1, obj_particle, {
		sprite: spr_pixel_explosion
	})
	audio_play(snd_rudebuster_hit)
	instance_destroy()
}