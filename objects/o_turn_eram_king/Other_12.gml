// Inherit the parent event
event_inherited()

pattern = enemy_struct.get_turn()

if(pattern == "kings") {
	o_enc.mybox.x -= 50
}

if(pattern == "hand") {
	o_enc.mybox.width *= 3
}