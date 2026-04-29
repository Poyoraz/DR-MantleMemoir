if state_get("start_cutscene_seen") {
    instance_destroy()
    instance_activate_object(inst_15D031D5_1)
    exit
}

global.party_names = ["kris"]

var inst = actor_create(party_get_obj("susie"), 50, 140)
inst.s_override = true
inst.sprite_index = spr_susie_landed
inst.image_speed = 0

party_setdata("susie", "hp", 110)

//var black = instance_create(obj_screen_hider, 0, 0, -10000)

trigger_code = function() {
	
	
    cutscene_create()
    cutscene_player_canmove(false)
    cutscene_party_follow(false)
    cutscene_set_variable(o_camera, "target", noone)
    cutscene_func(music_fade, [0, 0])
	/*
	cutscene_dialogue("* Your head spins, for a bit you can't even tell where your body is.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(120)
	
	cutscene_dialogue("* Ok, you feel a bit better.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Not good enough to stand up but at least you can feel both your legs.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(60)
	
	cutscene_dialogue("* What was the last thing that happened again? You last remember talking to Seam.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(60)
	
	cutscene_dialogue("* You can't lie down forever, you decide to just stand up and open your eyes at once.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(60)
	
	cutscene_func(function() { instance_destroy(obj_screen_hider) })
	cutscene_sleep(30)
	
	cutscene_dialogue("* You kinda can't believe that worked.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(60)
	
	
    cutscene_wait_dialogue_finish()
	*/
	cutscene_dialogue($"\{char(susie, 2)\}* Kris? Is that you?",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_func(music_pause, 0)
    
    cutscene_sleep(5)
    
    cutscene_animate(5, 0, 10, "linear", o_actor_susie, "shake")
    
    cutscene_sleep(5)
    
    cutscene_set_variable(o_actor_susie, "sprite_index", spr_susie_right)
    cutscene_dialogue("{char(susie, 6)}* What happened?",, false)
    cutscene_wait_dialogue_finish()
	
    cutscene_set_variable(o_actor_susie, "sprite_index", spr_susie_down)
    cutscene_dialogue("{char(susie, 2)}* Seam and that hammer guy were working on that cape like thing then?",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_set_variable(o_actor_susie, "sprite_index", spr_susie_up)
	cutscene_sleep(5)
    cutscene_set_variable(o_actor_susie, "sprite_index", spr_susie_left)
	cutscene_sleep(10)
    cutscene_set_variable(o_actor_susie, "sprite_index", spr_susie_right)
	cutscene_sleep(30)
		
	cutscene_set_variable(o_actor_susie, "sprite_index", spr_susie_up)
    cutscene_dialogue("{char(susie, 2)}* Wait, where is Ralsei?",, false)
    cutscene_wait_dialogue_finish()
	
	
    cutscene_dialogue("{char(susie, 2)}* He might know what is happening. Lets go Kris.",, false)
	cutscene_wait_dialogue_finish()
    
    cutscene_audio_play(mus_charjoin)
    cutscene_dialogue("* (Susie joined your party.)")
    
    cutscene_func(function() {
        var inst = o_actor_susie.id
        
        array_push(global.party_names, "susie")
        party_member_create("susie", true, inst.x, inst.y)
        instance_destroy(inst)
        
        camera_unpan(get_leader(), 10)
    })
    cutscene_sleep(10)
    
    cutscene_func(music_resume, 0)
    cutscene_func(function(inst) {
        music_resume(0)
        music_fade(0, 1, 30)
        state_add("start_cutscene_seen", inst)
	
		instance_activate_object(inst_15D031D5_1)
    }, [id])
    
    cutscene_party_follow(true)
    cutscene_party_interpolate()
    cutscene_player_canmove(true)
    cutscene_play()
}