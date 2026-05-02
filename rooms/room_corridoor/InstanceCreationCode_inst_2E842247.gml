if state_get("corridor_cutscene") {
    instance_destroy()
    exit
}

trigger_code = function() {
    cutscene_create()
	cutscene_dialogue($"* The color of this place, it feels, weird. Why do these walls seem familiar?",, false)
	cutscene_wait_dialogue_finish()
	
    cutscene_func(music_resume, 0)
    cutscene_func(function(inst) {
        music_resume(0)
        music_fade(0, 1, 30)
        state_add("corridor_cutscene", inst)
    }, [id])
    cutscene_play()
}