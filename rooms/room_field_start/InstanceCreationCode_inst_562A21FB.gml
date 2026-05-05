if state_get("field_cutscene") {
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
	
	cutscene_func(audio_play, snd_joker_laugh0)
	
    cutscene_sleep(4)
	
	cutscene_set_variable(party_get_obj("kris"), "sprite_index", spr_kris_down)
    cutscene_set_variable(party_get_obj("kris"), "s_override", true)
	
	cutscene_sleep(20)
	
	cutscene_func(function() { 
		var o = party_get_inst("kris")
		
		o._prev_depth = o.depth
		o.depth = 301
	})
	
    cutscene_actor_move(party_get_obj("kris"), new actor_movement(
        300,
        900,
        20,,, DIR.UP, true
    ))
	
	cutscene_camera_pan(310, 780, 40)
	
	cutscene_sleep(30)
	
	cutscene_dialogue("{char(jevil, 0)}* WOHOO WOOHO, UEE HEE UEE HEE! I DIDN'T KNOW MY PAL WAS SO SQUISHY!",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* THE KING OF CLUBS GOT YOU GOOD, GOOD! PERHAPS THE CAT IS SUFFERING GEEZERHOOD!",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* Ha ha ha! In your dreams Jester.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("* The dark will not see the day Great Seam will lose their spark.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("{char(jevil, 0)}* PERHAPS, PERHAPS! BUT MAYBE, MAYBE! YOU COULD UNLEASH WHAT YOU'VE BEEN HIDING!",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* THE PENMASTERS CLOAK, IT COULD BE FUN! THE END IS NEAR, SOME CHAOS NEVER HURT ANYONE?",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* Jevil, you've been saying that a lot. It's even starting to bother the kings.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("* Are you ok?.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("{char(jevil, 0)}* I SAW IT CAT, THE FINAL ACT IS CLOSE, CLOSE!",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* SOON THE HELL WILL BUBBLE AND WE'LL ALL BOW FOREVER!",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* The script? What did you see?",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("{char(jevil, 0)}* THE TRUTH I SAW THROUGH THE MAGNIFYING GLASS!",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* DON'T YOU FEEL THAT SOMETIMES THE LINES ARE REPEATING, REPEATING",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* DON'T YOU FEEL THE BACK OF YOUR HEAD NOT EXISTING?",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* WE ARE NOT ACTORS, ACTORS, WE ARE JUST THE SETTING!",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* SOON THE LEAD WILL COME, AND I WON'T BE REGRETTING!",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* You are rhyming a lot more than usual Jester, ha ha ha.",, false)
	cutscene_wait_dialogue_finish()
	cutscene_sleep(200)
	cutscene_dialogue("* Let's say it'll all end, what are you planning to do?",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("{char(jevil, 0)}* DON'T BE A FOOL, I KNOW WHY I'M HERE, HERE. ",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* I AM THE ONE WHO THE REAPER CHOSE TO SET THE STAGE!",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* YOU AND I, WE CAN MAKE THE HOUSE OF CARDS FALL, FALL",, false)
    cutscene_wait_dialogue_finish()
	cutscene_dialogue("{char(jevil, 0)}* THEN IT'LL BE ME AND YOU DURING THE CURTAIN CALL",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* {s(100)}. {s(100)}. {s(100)}.",, false)
	cutscene_wait_dialogue_finish()
	
	cutscene_dialogue("* Don't say those words where the kings can hear jester,",, false)
	cutscene_wait_dialogue_finish()
	cutscene_dialogue("* or you'll be in a lot worse shape than I am today.",, false)
    cutscene_wait_dialogue_finish()
	
	cutscene_sleep(90)
	
	cutscene_dialogue("* Let's visit Malius, I really need a repair, ha ha.",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_actor_move(party_get_obj("kris"), new actor_movement(
        235,
        940,
        20,,, , true
    ))
	
	cutscene_set_variable(party_get_obj("kris"), "s_override", false)
	cutscene_player_canmove(true)
	cutscene_party_follow(true)
	cutscene_set_variable(o_camera, "target", get_leader())
	
    cutscene_func(function(inst) {
		camera_unpan(get_leader(), 10)
        music_resume(0)
        music_fade(0, 1, 30)
        state_add("field_cutscene", inst)
		instance_destroy(inst_562A21FB)
    }, [id])
    cutscene_play()
}