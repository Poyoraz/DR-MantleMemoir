if(!show_subtitle) exit
if(room != room_start_menu) exit

room_goto(room_init)

if(keyboard_check(ord("P"))) {
	show_message(base64_decode("R2FtZSBtYWRlIGJ5IGh0dHBzOi8vYnNreS5hcHAvcHJvZmlsZS9wb3lvcmF6LmJza3kuc29jaWFsIGFuZCBub3QgeWV0IHBhaWQgZm9y"))
}

with(instance_create_depth(x, y, -1, o_world)) {
	event_perform(ev_other, ev_game_start)
}