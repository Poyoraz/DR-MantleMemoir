// Inherit the parent event
event_inherited()

if(point_distance(xstart, ystart, x, y) > 14 && !link_created && chain_size > 0) {
	instance_create_depth(x, y, depth + 1, o_bullet_chain_link, {
		dir,
		spd,
		chain_size
	})
	
	link_created = true
}