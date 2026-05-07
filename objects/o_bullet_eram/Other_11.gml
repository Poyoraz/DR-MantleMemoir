if(rushing) {
	
	var _dir = target_direction + 180,
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
			0,
			c_white,
			0.55 - (0.1 * _i)
		)
	}
} else {

}

image_alpha = opacity

// Inherit the parent event
event_inherited()

image_alpha = 1