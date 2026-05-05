letters = [
	spr_logo_1,
	spr_logo_2,
	spr_logo_3,
	spr_logo_4,
	spr_logo_5,
	spr_logo_6,
	spr_logo_7,
	spr_logo_8,
	spr_logo_9
]

timers = array_create_ext(
	9,
	function(_index) {
		var distance = abs(4.4 - _index)
		
		return -200 * distance
	}
)

sound_played = array_create(
	9,
	false
)

show_subtitle = false
show_tip = false