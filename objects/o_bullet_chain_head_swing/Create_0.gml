event_inherited()

direction = dir
speed = spd
image_angle = direction

link_created = false

next_link = noone

destroy = false

stopped = false
timer = 0

next_link = instance_create_depth(x, y, depth + 1, o_bullet_chain_link_swing, {
	dir,
	spd,
	chain_size
})