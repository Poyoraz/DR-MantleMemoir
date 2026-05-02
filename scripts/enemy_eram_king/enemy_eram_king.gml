function enemy_eram_king() : enemy() constructor{
	name = "Spadeking?"
	obj = o_actor_eram_king
	turn_object = o_turn_eram_king
	
	// stats
	hp =		240
	max_hp =	240
	attack =	5
	defense =	0
	
    // sprites
    s_idle = spr_eram_king
    s_hurt = spr_eram_king
    s_spare = spr_eram_king
    
    boogie_sprites = {
        kris: spr_ex_kris_boogie
    }
	shoot_sprites = {
		kris: spr_ex_kris_costume,
		susie: spr_ex_susie_costume,
		ralsei: spr_ex_ralsei_costume,
	}
	
	get_turn = function() {
		switch(o_enc.turn_count) {
			case 0:
				return "birds"
			case 1:
				return "rocks"
			case 2:
				return "fishes"
			case 3:
				return "knife"
			case 4:
				return "hammers"
			case 5:
				return "cats"
			case 6:
				return "jesters"
			case 7:
				return "kings"
			case 8:
				return "screens"
			case 9:
				return "hand"
			case 10:
				return "game"
		}
    }
	
	// acts
	acts = [
		{
			name: "Check",
			party: [],
			desc: "Useless analysis",
			exec: function() {
				static check_count = 0
				
				if(check_count < 1) {
					encounter_scene_dialogue("* Come on Kris! You know who I am!")
				} else if(check_count < 3) {
					encounter_scene_dialogue("* You know me better than you know yourself! I was your best friend remember?")
				} else if(check_count < 5) {
					encounter_scene_dialogue("* Devilish little horns, they prickle from the inside huh?")					
				} else if(check_count < 7) {
					encounter_scene_dialogue("* No matter how hard you try, that knife can't cut you deeper than how much I did.")					
				} else if(check_count < 8){
					encounter_scene_dialogue("* Take your vengance Kris. This world wronged you.")
				} else {
					encounter_scene_dialogue("* ... {s(60)} The knife plays.")
				}
				
				check_count++
			}
		},
	]
    
    // in-fight-events
    ev_post_turn = function() {
        instance_destroy(o_ex_enc_m_boogie_controller)
    }
    
	// text
	dialogue = function(slot){}
}