// Inherit the parent event
event_inherited()

var target_x = x + lengthdir_x(200, dir),
	target_y = y + lengthdir_y(200, dir)

draw_set_colour(c_orange)
	
for(var _i = -1; _i < 2; _i++) {	
	draw_line(
		xstart, 
		ystart + _i / 2, 
		target_x,
		target_y + _i / 2
	)
}