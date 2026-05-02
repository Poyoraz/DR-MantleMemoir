function enc_eram_king() : enc_set() constructor {
	debug_name	=	"eram_king"
	
	enemies = [
		new enemy_eram_king()
	]
	
	bgm = mus_burning_eyes
	
	flavor = function() {
		switch(o_enc.turn_count) {
			case 0:
				return "* Birds fly"
			case 1:
				return "* Rocks fall"
			case 2:
				return "* Fishes swim"
			case 3:
				return "* Knife plays"
			case 4:
				return "* Hammers create"
			case 5:
				return "* Cats hide"
			case 6:
				return "* Jesters steal"
			case 7:
				return "* Kings fall"
			case 8:
				return "* Screens break"
			case 9:
				return "* Hand drifts forward"
			case 10:
				return "* And thats how the game ends"
		}
    }
    
	enemies_pos = [
		[0, 0, true],
	]
}