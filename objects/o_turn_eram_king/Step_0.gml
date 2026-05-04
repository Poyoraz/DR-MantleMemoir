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
	}
}

return

if pattern == "sax" { // sax attack
	if timer == 6 {
		var o = enemy_struct.actor_id
		o.sprite_index = spr_ex_e_sguy_sax
		o.depth_override = DEPTH_ENCOUNTER.BULLETS_OUTSIDE - (o.y-guipos_y())
		o.depth = o.depth_override
	
		notepath = instance_create(o_ex_sguy_notepath)
	
		notepath.xx = o_enc_soul.x
		notepath.yy = o_enc_soul.y
		notepath.shadx = o.x-o.sprite_xoffset + 10
		notepath.shady = o.y-o.sprite_yoffset + 38
		
        notepath.ency = o_enc_box.y
	
		with notepath 
            event_user(0)
	
		notepath.depth = o.depth + 10
	}
    
	if timer % 70 == 0 && timer > 6 {
		var o = enemy_struct.actor_id
		notepath = instance_create(o_ex_sguy_notepath)
	
		notepath.xx = o_enc_soul.x
		notepath.yy = o_enc_soul.y
		notepath.shadx = o.x-o.sprite_xoffset + 10
		notepath.shady = o.y-o.sprite_yoffset + 38
		notepath.ency = o_enc_box.y
	
		with notepath 
            event_user(0)
	
		notepath.depth = o.depth+10
	}
	if timer == timer_end - 15 {
		var o = enemy_struct.actor_id
		o.sprite_index = enemy_struct.s_idle
		o.depth_override = undefined
	
		instance_destroy()
	}
}
else if pattern == "gun" { // gun attack
	if timer == 6 {
		var o = enemy_struct.actor_id
		o.gun = true
		o.gun_angle = 0
		animate(o.x, o.x + 20, 15, "cubic_out", o, "x")
        
		o.depth_override = DEPTH_ENCOUNTER.BULLETS_OUTSIDE - (o.y-guipos_y())
	}
	if timer > 6 + 15 && timer % 5 == 0 && count < 12 && timer < timer_end - 15 {
		var o = enemy_struct.actor_id
        
		animate(1, 3, 2, 0, o, "gun_img")
		o.gun_angle = point_direction(o.x - 6, o.y - 16, o_enc_soul.x, o_enc_soul.y) + random_range(-25, 25) - 180
		var a = o.gun_angle - 180
		
		var inst = instance_create(o_ex_bullet_sguy_bullet, o.x-18 + lengthdir_x(26, a), o.y-24 + lengthdir_y(26, a)-8, DEPTH_ENCOUNTER.BULLETS_OUTSIDE)
		inst.direction = o.gun_angle + 180
		inst.image_angle = inst.direction-180
		inst.speed = 4
		
		count ++
	}
	
	if count == 12 && !reloading && timer < timer_end - 15 {
		var o = enemy_struct.actor_id
		o.sprite_index = spr_ex_e_sguy_reload
		o.gun = false
		reloading = true
	}
	if reloading && timer < 200 - 15 {
		ttimer ++
	}
	if count == 12 && reloading && ttimer == 25 && timer < timer_end - 15 {
		var o = enemy_struct.actor_id
		o.sprite_index = spr_ex_e_sguy_reload
		o.image_speed = 1
		
		o.gun = true
		o.gun_angle = 0
		
		reloading = false
		ttimer = 0
		count = 0
	}
	if timer >= timer_end - 17 && !ending_turn {
		var o = enemy_struct.actor_id
		o.gun = false
		o.sprite_index = spr_ex_e_sguy_reload
		animate(o.x, o.x-20, 15, "cubic_out", o, "x")
        ending_turn = true
	}
	if timer == timer_end {
		var o = enemy_struct.actor_id
		o.sprite_index = enemy_struct.s_idle
		o.depth_override = undefined
		instance_destroy()
	}
}