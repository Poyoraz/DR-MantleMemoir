function enc_bird() : enc_set() constructor {
	debug_name	=	"bird"
	
	enemies = [
		new enemy_bird(),
	]
	
	bgm = mus_battle
	
	flavor = function() {
		return choose(
			"* Cool mantle bro.", 
			"* The bird is the word.", 
			"* The word is the bird.", 
			"* The bird is the bird.",
			"* Take a moment to think.",
		)
    }
    
	enemies_pos = [
		[0, 0, true],
		[-12, 30, true],
		[-12, -45, true],
	]
}