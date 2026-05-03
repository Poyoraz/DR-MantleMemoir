sprite_index = sprite
	
timer = 0
	
sprite_speed = sprite_get_speed(sprite)
sprite_count = sprite_get_number(sprite)
	
// GET DURATION OF ONE SPRITE LOOP IN FRAMES
duration = (game_get_speed(gamespeed_fps) / sprite_speed) * sprite_count