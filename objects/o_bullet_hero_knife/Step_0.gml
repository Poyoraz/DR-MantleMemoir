if(instance_exists(o_enc_soul)) {
	timer++
	
	if(rushing) {
		x = scr_ease_value(x, target_x, 10, true)
		y = scr_ease_value(y, target_y, 10, true)
		
		if(point_distance(x, y, target_x, target_y) < 2) {
			rushing = false
			timer = 0
			is_right = !is_right
			
			sprite_index = is_right ? spr_hero_knife_right_ready : spr_hero_knife_left_ready
			image_angle = 0
			
			xstart = x
			ystart = y
			
			if(loops == 0) {
				instance_destroy()
				instance_destroy(o_turn_eram_king)
			}
		}
		
	} else {
		if (timer == 1) target_direction = point_direction(x, y, o_enc_soul.x, o_enc_soul.y)
		
		target_direction = scr_ease_value_angle(
			target_direction,
			point_direction(x, y, o_enc_soul.x, o_enc_soul.y),
			0.75
		)
	
		direction = scr_ease_value_angle(
			direction,
			point_direction(x, y, xstart, ystart),
			15
		)
	
		speed = max(3, 10 * (point_distance(x, y, xstart, ystart) / 100))
		
		if(timer > loops * 25) {
			rushing = true
			timer = 0
			
			var _cos = dcos(target_direction),
				_sin = dsin(target_direction),
				_line_length = rush_length
			
			target_x = x + (_cos * rush_length)
			target_y = y - (_sin * rush_length)
			
			sprite_index = is_right ? spr_hero_knife_right_rush : spr_hero_knife_left_rush
			speed = 0
			image_angle = is_right ? target_direction : target_direction - 180
			
			loops -= 0.5
			
			xstart = x
			ystart = y
		}
	}
}
