struct_set(
	party_nametostruct("kris"), 
	"hp", 
	min(party_getdata("kris", "hp") + 9999, 
	party_getdata("kris", "max_hp"))
)

create_gateway = function() {
	layer_set_visible("Assets_2", false)
	
	show_debug_message("BEPİS!!!!!!!")
	exit_sign.y = 130
	exit_warp.y = 130
}
	
	show_debug_message("PEBİS???!!!!!!!")
	

trigger_code = function() {
	if(state_get("room_cutscene")) {
		new enc_eram_king()._start()
			
		create_gateway()
	
		return
	}
	
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
	
    cutscene_actor_move(party_get_obj("kris"), new actor_movement(
        0,
        20,
        20,,, DIR.DOWN, false
    ), , false)
	
    cutscene_func(function(inst) {
		new enc_eram_king()._start()
    })
		
	cutscene_sleep(15)
	
    cutscene_func(function(inst) {
        state_add("room_cutscene", inst)
		create_gateway()
		
		instance_destroy()
    }, [id])
    cutscene_play()
}