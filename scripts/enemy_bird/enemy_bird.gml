function enemy_bird() : enemy() constructor{
	name = "Mantle Bird"
	obj = o_actor_bird
	turn_object = o_turn_bird
	
	// stats
	hp =		240
	max_hp =	240
	attack =	5
	defense =	0
	
    // sprites
    s_idle = spr_wing_guy
    s_hurt = spr_wing_guy
    s_spare = spr_birds
	
	// acts
	acts = [
		{
			name: "Check",
			party: [],
			desc: "Useless analysis",
			exec: function() {
				encounter_scene_dialogue([
					"* Mantelion Bird - 5 ATK 0 DEF: Seems like just cloth, but has a deep mind of it's own",
					"* Wants to " + choose("learn literature.", "do blacksmithing.", "get old.")
				])
			}
		},
		{
			name: "Talk",
			party: [],
			desc: "Talk about a random subject",
			exec: function(enemy_slot) {
				encounter_scene_dialogue("You told Mantelion Bird about the time you" + choose(
					" got into a biking incident.",
					" replaced your brother's shampoo with paint.",
					" flushed bath bombs into the toilet."
				))
				
				enc_enemy_add_spare(enemy_slot, 50)
			}
		},
	]
    
    
	// text
	dialogue = function(slot){}
}