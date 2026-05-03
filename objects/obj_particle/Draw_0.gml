var _sprite = sprite_index,
	_image_index = floor(timer / (game_get_speed(gamespeed_fps) / sprite_speed))
	
draw_sprite(_sprite, _image_index, x, y)
