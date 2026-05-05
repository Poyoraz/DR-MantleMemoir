event_inherited()

if(timer-- == 0) {
	instance_create_depth(
		x, 
		y,
		depth,
		o_bullet_chain_head,
		{
			dir
		}
	)
	
	instance_destroy()
}