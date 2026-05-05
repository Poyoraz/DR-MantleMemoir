event_inherited()

pattern = enemy_struct.get_turn()

switch(pattern) {
	case "birds": {
		if(timer % 60 == 1 && timer < 300) {
			var o = enemy_struct.actor_id
		
			repeat(timer > 180 ? 3 : 1) {
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
	
		if(timer == 300 || timer == 360 || timer == 420) {
			var o = enemy_struct.actor_id
		
			for(var ang = 0; ang < 360; ang += 30) {
			
				instance_create(
					o_bullet_birds,
					o.x,
					o.y - 40,
					DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
					{
						first_goal_x: o.x + (dcos(ang) * 30),
						first_goal_y: o.y - 40 - (dsin(ang) * 30)
					}
				)
			}
		}
	
		if(timer == 480) instance_destroy()
	
		break
	}
	
	case "rocks": {
		var o = enemy_struct.actor_id
	
		if(timer % 20 == 1) {
			var _x = irandom_range(o.x, o.x - 200)
			
			instance_create(o_bullet_rock, _x, o.y - 150, DEPTH_ENCOUNTER.BULLETS_OUTSIDE)
		
		}
		
		if(timer == 600) {
			instance_destroy()
			instance_destroy(o_bullet_fire_with_pause)
			instance_destroy(o_bullet_rock)
		}
		break
	}
	
	case "fishes": {
		if(timer % 30 == 1) {
			var o = enemy_struct.actor_id
		
			repeat(timer > 90 ? 3 : 1) {
				instance_create(
					o_bullet_fishes,
					o.x + irandom_range(-30, 30),
					o.y - 40 + irandom_range(-30, 30),
					DEPTH_ENCOUNTER.BULLETS_OUTSIDE
				)
			}
			
			if(timer > 150) {
				repeat(3) {
					instance_create(
						o_bullet_fishes,
						o.x + irandom_range(-30, 30) - 200,
						o.y - 40 + irandom_range(-30, 30),
						DEPTH_ENCOUNTER.BULLETS_OUTSIDE
					)
				}
			}
		}
	
		if(timer == 480) {
			instance_destroy()
			instance_destroy(o_bullet_fishes)
		}
	
		break
	}

	case "cactus": {
		var o = enemy_struct.actor_id
			
		if(timer % 20 == 1) {
			var _x = irandom_range(o.x, o.x - 200)
			// temperature
			instance_create_depth(
				_x, 
				o.y + 35, 
				DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
				o_bullet_cactus, 
				{
					temperature: choose("hot", "cold", "normal")
				}
			)
		}
		
		if(timer == 600) {
			instance_destroy()
			instance_destroy(o_bullet_cactus)
			instance_destroy(o_bullet_cactus_spike)
		}
		break
	}

	case "knife": {
		var o = enemy_struct.actor_id
		
		if timer == 6 instance_create(o_bullet_hero_knife, o.x, o.y, DEPTH_ENCOUNTER.BULLETS_OUTSIDE)
		break
	}
	
	case "hammers": {
		var o = enemy_struct.actor_id
		
		if timer == 6 instance_create(o_bullet_hero_hammer, o.x, o.y, DEPTH_ENCOUNTER.BULLETS_OUTSIDE)
		
		if(timer == 300) {
			instance_destroy()
			instance_destroy(o_bullet_hero_hammer)
			instance_destroy(o_bullet_hammer_buster)
		}
		break
	}
	
	case "cats": {
		var o = enemy_struct.actor_id
			
		if(timer % 10 == 1) {
			var _y = irandom_range(o_enc.mybox.y + 50, o_enc.mybox.y - 50)
			
			instance_create_depth(
				o.x, 
				_y, 
				DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
				o_bullet_cat
			)
		}
		
		if(timer == 600) {
			instance_destroy()
			instance_destroy(o_bullet_cat)
		}
		break
	}
	
	case "jesters": {
		var o = enemy_struct.actor_id
		
		if timer == 6 { 
			instance_create(o_bullet_jester, o.x, o.y, DEPTH_ENCOUNTER.BULLETS_OUTSIDE)
			up = false
		}
		if timer > 6 && timer % 15 == 0 && timer <= 225 {
			up = !up
			
			for(var _offset = -40; _offset < 80; _offset += 30) {
				instance_create(
					o_bullet_lancer, 
					o.x, 
					o.y,  
					DEPTH_ENCOUNTER.BULLETS_OUTSIDE, 
					{ timer: 0, y_offset: _offset + (up ? 10 : -10) }
				)
			} 
		}
		
		if(timer == 600) {
			instance_destroy()
			instance_destroy(o_bullet_jester)
			instance_destroy(o_bullet_lancer)
			instance_destroy(o_bullet_hammer_buster)
		}
		break
	}
	
	case "kings": {
		var o = enemy_struct.actor_id
		
		if(timer == 26) {
			o.s_override = true
			o.sprite_index = spr_eram_king_throw
			o.image_index = 0
		}
		
		if(timer == 36) {
			o.sprite_index = spr_eram_king_throw_idle
			
			instance_create_depth(
				o.x - 47, 
				o.y - 27, 
				DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
				o_bullet_chain_head_swing, 
				{
					dir: 180,
					spd: 6
				}
			)
		}
		
		if(timer % 90 == 12) {
			var _dir = random_range(0, 360)
			
			instance_create_depth(
				o_enc_soul.x + lengthdir_x(100, _dir),
				o_enc_soul.y + lengthdir_y(150, _dir),
				DEPTH_ENCOUNTER.BULLETS_OUTSIDE,
				o_bullet_chain_warning,
				{
					dir: _dir - 180
				}
			)
		}
		
	}
}