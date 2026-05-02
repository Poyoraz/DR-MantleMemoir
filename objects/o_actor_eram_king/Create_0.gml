event_inherited()
s_intro = spr_ex_e_sguy_hurt

s_drawer = function(_sprite, _index, _xx, _yy, _xscale, _yscale, _angle, _blend, _alpha) {
	draw_sprite_ext(_sprite, _index, 
		_xx, _yy, 
		_xscale, _yscale, 
		_angle, _blend, _alpha
	)
}