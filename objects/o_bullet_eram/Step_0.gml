opacity = scr_ease_value(opacity, 1, 0.05)

if(hp == 0) {
	o_turn_eram_king.enemy_struct.defense = -9999999
	
	instance_destroy(o_turn_eram_king)
	instance_destroy()
	instance_destroy(o_enc_bullet)
	instance_destroy(o_player_charge)
	
}

if(instance_exists(o_enc_soul)) {
	timer++
	
	if(rushing) {
		x = scr_ease_value(x, target_x, 10, true)
		y = scr_ease_value(y, target_y, 10, true)
		
		var spd = point_distance(x, y, xprevious, yprevious)
		
		if(spd > 7 && timer % 4 == 0 && hp < 21) {
			instance_create_depth(x, y, depth + 1, o_bullet_fire_with_pause, {
				dir: target_direction + 90,
				pause_time: 25,
				spd: 4
			})
			
			instance_create_depth(x, y, depth + 1, o_bullet_fire_with_pause, {
				dir: target_direction - 90,
				pause_time: 25,
				spd: 4
			})
		}
		
		if(point_distance(x, y, target_x, target_y) < 2) {
			rushing = false
			timer = 0
			is_right = !is_right
			
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
	
		speed = max(5, 12 * (point_distance(x, y, xstart, ystart) / 100))
		
		if(timer > loops * 25) {
			rushing = true
			timer = 0
			
			var _cos = dcos(target_direction),
				_sin = dsin(target_direction),
				_line_length = rush_length
			
			target_x = clamp(x + (_cos * rush_length), left_border, right_border)
			target_y = clamp(y - (_sin * rush_length), top_border, bottom_border)
			
			speed = 0
			
			xstart = x
			ystart = y
		}
		
		if(hp < 15) {
			
			if(timer % 60 == 0) {
				var o = self
		
				repeat(3) {
					instance_create(
						o_bullet_birds,
						o.x,
						o.y - 40,
						DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
						{
							first_goal_x: o.x + irandom_range(-30, 30), 
							first_goal_y: o.y - 40 + irandom_range(-30, 30)
						}
					)
				}
			}
		}
		
		if(hp < 7) {
			if(winddown == 0) {
				instance_create(o_bullet_hammer_buster, x, y, depth - 1)
				audio_play(snd_rudebuster_swing)
				winddown--
			}
			if(winddown-- > 0) return;
	
			var _hammer_goal = is_up ? 180 : 0
	
			hammer_angle = scr_ease_value(
				hammer_angle, 
				_hammer_goal,
				2,
				true
			)
	
			if(abs(hammer_angle - _hammer_goal) < 5) {
				is_up = !is_up
			
				winddown = 20
			}
		}
	}
}
