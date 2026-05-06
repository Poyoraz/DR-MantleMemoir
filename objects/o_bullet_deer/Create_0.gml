event_inherited()

timer = 0

_left_border = o_enc.mybox.x - o_enc.mybox.width / 2
_right_border = o_enc.mybox.x + o_enc.mybox.width / 2

wait = 30

goal_x = irandom_range(_left_border, _right_border) 

destroy = false