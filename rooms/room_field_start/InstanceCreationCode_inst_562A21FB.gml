if state_get("corridor_cutscene") {
    instance_destroy()
    exit
}

/*
	[Jevil Laugh]
	[Kris hides]
	j:
	WOOHOO WOOHOO, UEE HEE UEE HEE!
	I DIDN'T KNOW MY PAL WAS SO SQUISHY,
	THE KING OF CLUBS GOT YOU GOOD, GOOD!
	PERHAPS THE CAT IS SUFFERING GEEZERHOOD!
	
	s:
	Ha ha ha! In your dreams Jester. The dark will not see the day Great Seam will lose their spark.
	
	j:
	PERHAPS, PERHAPS! BUT MAYBE, MAYBE!
	YOU COULD UNLEASH WHAT YOU'VE BEEN HIDING!
	THE PENMASTERS CLOAK, IT COULD BE FUN!
	THE END IS NEAR, SOME CHAOS NEVER HURT ANYONE?
	
	s:
	Jevil, you've been saying that a lot. It's even starting to bother the kings. Are you ok?
	
	j:
	I SAW IT CAT, THE FINAL ACT IS CLOSE, CLOSE
	SOON THE HELL WILL BUBBLE AND WE'LL ALL BOW FOREVER
	WHY NOT SET LOOSE? THIS IS OUR LAST STAND, STAND!
	I JUST WANT TO SEE HOW FAR THE SCRIPT CAN GO!
	
	s:
	The script? What did you see?
	
	j:
	THE TRUTH I SAW THROUGH THE MAGNIFYING GLASS!
	DON'T YOU FEEL THAT SOMETIMES THE LINES ARE REPEATING, REPEATING
	DON'T YOU FEEL THE BACK OF YOUR HEAD NOT EXISTING?
	WE ARE NOT ACTORS, ACTORS, WE ARE JUST THE SETTING!
	SOON THE LEAD WILL COME, AND I WON'T BE REGRETTING!

	s:
	You are rhyming a lot more than usual Jester, ha ha ha. Let's say it'll all end, what are you planning to do?
	
	j:
	DON'T BE A FOOL, YOU KNOW WHY I'M HERE, HERE.
	I AM THE ONE WHO THE REAPER CHOSE TO SET THE STAGE!
	YOU AND I, WE CAN MAKE THE HOUSE OF CARDS FALL, FALL
	THEN IT'LL BE ME AND YOU DURING THE CURTAIN CALL
	
	s:
	Don't say those words where the kings can hear jester, or you'll be in a lot worse shape than I am today.
*/

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