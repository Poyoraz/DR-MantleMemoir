
if(point_distance(xstart, ystart, x, y) > 14 && !link_created && chain_size > 0) {
	instance_create_depth(
		x + lengthdir_x(14, dir - 180),  
		y + lengthdir_y(14, dir - 180), 
		depth + 1, 
		o_bullet_chain_link, 
		{
			dir,
			spd,
			chain_size: chain_size - 1
		}
	)
	
	link_created = true
}