sprite_index = spr_mail

text = [
	"{char(jevil, 0)}* THE CAT IS TOO COWARDLY, COWARDLY",
	"{char(jevil, 0)}* I COULDN'T GET MY HANDS ON IT",
	"{char(jevil, 0)}* I HEARD OF YOU, YOU SEE THE TRUTH, TRUTH",
	"{char(jevil, 0)}* YOU ARE A SHOPKEEPER, YOU KNOW THE RULES",
	"{char(jevil, 0)}* WITH YOUR HELP, THE SPADE WILL BE THE KING OF KINGS",
	"{char(jevil, 0)}* HELP ME BREAK IN, AND THE STAGE WILL BE COMPLETE",
]

function after_effects() {
	instance_destroy(inst_7E65FAA7)
	instance_destroy(blocker)
}