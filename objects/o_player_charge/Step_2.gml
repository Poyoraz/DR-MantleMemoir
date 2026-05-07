if(instance_exists(o_enc_soul)) {
	x = o_enc_soul.x
	y = o_enc_soul.y
}

if(o_enc.tp > 99 && tutorial_done) {
	party_heal("kris", 30, o_enc)
	o_enc.tp = 0
}