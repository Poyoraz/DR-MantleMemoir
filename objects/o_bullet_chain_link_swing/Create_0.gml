event_inherited()

direction = dir
speed = 0
image_angle = direction

link_created = false

next_link = noone

destroy = false

stop = method(self, function() {
	speed = 0
	if(instance_exists(next_link)) {
		next_link.stop()
	}
})

move = method(self, function(timer) {
	y = ystart + (dsin(timer) * (6 * chain_size  + 0.2))

	if(instance_exists(next_link)) {
		next_link.move(max(0, timer - 5))
	}
})

start = method(self, function() {
	speed = spd
})

if(chain_size > 0) {
	next_link = instance_create_depth(
		x,  
		y, 
		depth + 1, 
		o_bullet_chain_link_swing, 
		{
			dir,
			spd,
			chain_size: chain_size - 1
		}
	)
}