// Inherit the parent event
if(after_image_distance > 0) {
	var _cos = dcos(direction - 180),
		_sin = dsin(direction - 180)
	
	for(var _i = 0; _i < 5; _i++) {
		
		draw_sprite_ext(
			sprite_index, 
			_i + timer % 4, 
			x + (_cos * _i * after_image_distance),
			y - (_sin * _i * after_image_distance),
			1,
			1,
			direction,
			c_white,
			0.55 - (0.1 * _i)		
		)
	}
}

event_inherited();

