if(rushing) {
	
	draw_set_colour(c_orange)
	
	for(var _i = -1; _i < 2; _i++) {	
		draw_line(
			xstart, 
			ystart + _i / 2, 
			target_x,
			target_y + _i / 2
		)
	}
	
	var _dir = is_right ? image_angle - 180 : image_angle,
		_cos = dcos(_dir),
		_sin = dsin(_dir),
		_speed = point_distance(x, y, xprevious, yprevious)
	
	for(var _i = 0; _i < 5; _i++) {
		draw_sprite_ext(
			sprite_index, 
			_i, 
			x + (_cos * _i * _speed),
			y - (_sin * _i * _speed),
			1,
			1,
			image_angle,
			c_white,
			0.55 - (0.1 * _i)
		)
	}
} else {

	var _cos = dcos(target_direction),
		_sin = dsin(target_direction),
		_line_length = rush_length
	
	var _xx = x + (_cos * _line_length),
		_yy = y - (_sin * _line_length) - 0.5
	
	draw_set_colour(c_orange)
	
	for(var _i = 0; _i < 3; _i++) {	
		draw_line(
			x, 
			y + _i / 2, 
			_xx,
			_yy + _i / 2
		)
	}
}

// Inherit the parent event
event_inherited()