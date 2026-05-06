event_inherited()


sprite_speed = sprite_get_speed(sprite_index)
sprite_count = sprite_get_number(sprite_index)
	
// GET DURATION OF ONE SPRITE LOOP IN FRAMES
duration = (game_get_speed(gamespeed_fps) / sprite_speed) * sprite_count

audio_play(snd_fountain_make)

alarm[0] = duration

destroy = false