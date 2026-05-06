for(var _i = 0; _i <= 180; _i += 30) {
	instance_create_depth(
		x,
		y,
		depth - 1,
		o_bullet_generic,
		{
			dir: _i
		}
	)
}

instance_destroy()

