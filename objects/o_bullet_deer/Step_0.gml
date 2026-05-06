if(wait > 0) { return wait-- } 

x = scr_ease_value(x, goal_x, 3)

if(x == goal_x) {
	wait = 35
	
	while(abs(goal_x - x) < 40) {
		goal_x = irandom_range(_left_border, _right_border)
	}
	
	alarm[0] = 20
}