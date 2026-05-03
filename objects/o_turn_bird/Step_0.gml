event_inherited()

if(timer % 60 == 1 && timer < 300) {
	
	with(o_actor_bird) {
		var o = self
		
		instance_create(
			o_bullet_birds,
			o.x,
			o.y - 40,
			DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
			{
				first_goal_x: o.x + irandom_range(-30, 30), 
				first_goal_y: o.y - 40 + irandom_range(-30, 30),
				no_after_image: true
			}
		)
	}
}
	