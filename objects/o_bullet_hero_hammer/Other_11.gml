// Inherit the parent event
event_inherited()

var offset_obj = is_up
	? hammer_offset_up
	: hammer_offset_down
	
draw_sprite_ext(
	spr_hammer,
	-1,
	x + offset_obj.x,
	y + offset_obj.y,
	1,
	1,
	hammer_angle,
	c_white,
	1
)