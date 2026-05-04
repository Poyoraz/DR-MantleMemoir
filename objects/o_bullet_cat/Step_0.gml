if(sitting || cant_sit) return;

var will_sit = false

if(x < o_enc.mybox.x - 50) {
	will_sit = true
} else {
	var cats = instance_number(o_bullet_cat)

	for(var _i = 0; _i < cats; _i++) {
		var _ins = instance_find(o_bullet_cat, _i)
		
		if(self == _ins) continue
		if(!_ins.sitting) continue
		
		if(x < _ins.x + 10) {
			will_sit = true
			break
		}
	}
}

if(will_sit) {
	sprite_index = spr_cat_grab
	sitting = true
	speed = 0
	graze = 0
}