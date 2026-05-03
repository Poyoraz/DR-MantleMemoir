if state_get("corridor_cutscene") {
    instance_destroy()
    exit
}

trigger_code = function() {
    cutscene_create()
	
    cutscene_player_canmove(false)
    cutscene_party_follow(false)
    cutscene_set_variable(o_camera, "target", noone)
	
    cutscene_sleep(40)
	
	cutscene_set_variable(party_get_obj("kris"), "sprite_index", spr_kris_up)
    cutscene_set_variable(party_get_obj("kris"), "s_override", true)
	
	cutscene_sleep(60)
	
    cutscene_actor_move(party_get_obj("kris"), new actor_movement(
        party_get_obj("kris").x,
        150,
        150,,, DIR.UP, true
    ))
	
	cutscene_sleep(120)
	
	cutscene_func(
		function() {
			party_get_obj("kris").s_move[DIR.RIGHT] = spr_kris_right_run
			
			music_play(mus_chase, 0, true, 0.5, 1.2)
			instance_create(obj_random_step_sound_maker)
		}
	)
    
	cutscene_actor_move(party_get_obj("kris"), new actor_movement(
        330,
        120,
        20,,,DIR.RIGHT,true
    ), false, false)
	
	cutscene_sleep(8)
	
	cutscene_func(function() { 
		instance_create(obj_screen_hider, 0, 0, -10000)
		audio_play(snd_noise)
	})
	
	cutscene_sleep(30)
	
	cutscene_dialogue("* You are running with your eyes closed.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(30)
	
	cutscene_dialogue("* You try to think about Susie.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* Your brain hurts trying to not think about her.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(30)
	cutscene_dialogue("* Why not think about how you got here instead?",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* You talked with Seam, they told you about how strong the mantle is.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Susie said you should try to make more of it, just in case you,",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* went up against the Knight again.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Seam seemed curious, Ralsei told you that it could be dangerous.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* \"The very nature of the mantle is shrouded in darkness\"",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Susie didn't listen, she and Seam went to Malius.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Malius was mortified upon seeing the mantle,",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* But seeing Seam out of their shop freaked them out harder.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* They agreed to help Susie and Seam.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* You heard them mutter \"I'll make you proud old man\".",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* \"That MANTLE is seething with energy! Let's feel my technique!\"",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Yet as they hit their head on the mantle and the silk Seam brought,",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Smoke started filling the room. Not unlike a fountain.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* You and Susie got everyone out of the bakery,",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* But you rammed into Susie to get her out of the bakery last second.",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("* You didn't want {col(c_orange)}it{reset_col} to talk to her.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(120)
	
	cutscene_func(music_stop, [0])
	cutscene_func(audio_play, [snd_impact])
	cutscene_func(instance_destroy, [obj_random_step_sound_maker])
	
	cutscene_sleep(10)
	
	cutscene_dialogue("* You hit your head on a large door.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_func(audio_play, [snd_dooropen])
	
    cutscene_func(music_resume, 0)
	
    cutscene_party_follow(true)
    cutscene_party_interpolate()
    cutscene_player_canmove(true)
	
    cutscene_func(function(inst) {
		party_get_obj("kris").s_move[DIR.RIGHT] = spr_kris_right
        music_resume(0)
        music_fade(0, 1, 30)
        state_add("corridor_cutscene", inst)
    }, [id])
    cutscene_play()
}