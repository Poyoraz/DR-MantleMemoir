if state_get("room_cutscene") {
    instance_destroy()
    exit
}

trigger_code = function() {
    cutscene_create()
	
    cutscene_player_canmove(false)
    cutscene_party_follow(false)
    cutscene_set_variable(o_camera, "target", noone)
	
    cutscene_sleep(4)
	
	cutscene_dialogue("{col(c_orange)}* Kris, sit down.",, false)
	cutscene_wait_dialogue_finish()
	
	cutscene_sleep(8)
	
	cutscene_set_variable(party_get_obj("kris"), "sprite_index", spr_kris_down)
    cutscene_set_variable(party_get_obj("kris"), "s_override", true)
	
	cutscene_sleep(20)
	
    cutscene_actor_move(party_get_obj("kris"), new actor_movement(
        430,
        165,
        20,,, DIR.DOWN, true
    ))
	
    cutscene_sleep(4)
	
	cutscene_dialogue("{col(c_orange)}* You feel it too right?",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_sleep(4)
	
	cutscene_dialogue("{col(c_orange)}* We are outside the bounds of the prophecy.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{col(c_orange)}* When I helped you I never thought, you'd win.",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_sleep(4)
	
	cutscene_dialogue("{col(c_orange)}* But Kris, I never liked being used as a tool.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{col(c_orange)}* Something to be tossed around to continue someone elses plans.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{col(c_orange)}* I am not powerful enough Kris, I couldn't break my chains.",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_sleep(4)
	
	cutscene_dialogue("{col(c_orange)}* You are.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{col(c_orange)}* You have the potential.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{col(c_orange)}* But your blade is still dull.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{col(c_orange)}* Let me sharpen you up some more Kris.",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_sleep(4)
	
	cutscene_set_variable(party_get_obj("kris"), "s_override", false)
	cutscene_player_canmove(true)
	cutscene_party_follow(true)
	cutscene_set_variable(o_camera, "target", get_leader())
	
    cutscene_func(function(inst) {
		camera_unpan(get_leader(), 10)
        music_resume(0)
        music_fade(0, 1, 30)
        state_add("room_cutscene", inst)
		instance_destroy()
		
		new enc_eram_king()._start()
    }, [id])
    cutscene_play()
}