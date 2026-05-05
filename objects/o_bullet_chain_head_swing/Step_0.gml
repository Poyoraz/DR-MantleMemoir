// Inherit the parent event
event_inherited()

if(x < o_enc.mybox.x + o_enc.mybox.width / 2 && !stopped) {
	stopped = true
	speed = 0
	
	instance_create(o_bullet_border_spikes, x, y, DEPTH_ENCOUNTER.BOX - 1)
	
	if(instance_exists(next_link)) {
		next_link.stop()
	}
}

if(stopped) {
	timer += 2.5
	
	y = ystart + (dsin(timer) * 30)
	
	o_enc.mybox.y = y

	if(instance_exists(next_link)) {
		next_link.move(max(0, timer - 5))
	}
}

if(point_distance(xstart, ystart, x, y) > 2 && !link_created && chain_size > 0) {
	next_link.start()
	link_created = true
}