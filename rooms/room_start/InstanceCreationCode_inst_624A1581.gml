if state_get("start_cutscene_seen") {
    instance_destroy()
    instance_activate_object(inst_15D031D5_1)
    exit
}

global.party_names = ["kris"]

var black = instance_create(obj_screen_hider, 0, 0, -10000)

trigger_code = function() {
	
	
    cutscene_create()
    cutscene_player_canmove(false)
    cutscene_party_follow(false)
    cutscene_set_variable(o_camera, "target", noone)
    cutscene_func(music_fade, [0, 0])

	cutscene_dialogue("* Your head spins, for a bit you can't even tell where your body is.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(120)

	cutscene_dialogue("* You move your arms around, slowly figuring out where ground is, it feels, silky.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(40)

	cutscene_dialogue("* Are you at your bed? You try to reach for the walls of your room.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(40)
	
	cutscene_dialogue("* No walls, you give your outfit a feel, you are definitely in a dark world.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(40)
	
	cutscene_dialogue("* You try to open your eyes, but your brain feels like static.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(40)
	
	cutscene_dialogue("* You decide to rest a bit, stuffing your face into the ground.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(40)
	
	cutscene_dialogue("* .{p(60)} .{p(60)} .{p(60)} It's quiet.",, false)
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
	cutscene_func(function() { audio_play(snd_jump) })
	
	cutscene_sleep(60)
	
	cutscene_func(function() { instance_destroy(obj_screen_hider) })
	cutscene_func(function() { audio_play(snd_noise) })
	cutscene_sleep(30)
	
	cutscene_dialogue("* You kinda can't believe that worked.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(60)
	
	
    cutscene_wait_dialogue_finish()
	
    
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