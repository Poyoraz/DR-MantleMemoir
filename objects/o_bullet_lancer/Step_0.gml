timer++

var _rad = 30,
	_dir = timer * 4,
	_sin = dsin(_dir),
	_cos = dcos(_dir)
	
	
x = o_enc.mybox.x + (_cos * _rad * 2)
y = o_enc.mybox.y - (_sin * _rad / 2) + y_offset

var _is_behind = (_dir % 360) < 180

disabled = _is_behind
graze = _is_behind ? 0 : 1
	