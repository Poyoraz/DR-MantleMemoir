// Inherit the parent event
event_inherited()

pattern = enemy_struct.get_turn()

if(pattern == "kings") {
	o_enc.mybox.x -= 50
}

if(pattern == "hand") {
	o_enc.mybox.width *= 3
}

if(pattern == "game") {
	o_enc.mybox.width *= 1.5
	o_enc.mybox.height *= 1.5
}