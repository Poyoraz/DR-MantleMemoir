event_inherited()

timer = 0

switch(temperature) {
	case "hot":
		sprite_index = spr_cactus_hot
		frequency = 55
		step_size = 45
		break
	case "cold":
		sprite_index = spr_cactus_cold
		frequency = 85
		step_size = 20
		break
	default:
		sprite_index = spr_cactus
		frequency = 65
		step_size = 30
		break
}