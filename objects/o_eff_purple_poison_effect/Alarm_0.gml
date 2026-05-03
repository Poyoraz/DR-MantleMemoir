var xx = random_range(-target.sprite_width/2, target.sprite_width/2);
var yy = random(target.myheight);

var star = instance_create(o_eff_magicstar, target.x + xx, target.y - yy, target.depth - 2);

star.image_blend = make_color_rgb(180, 0, 255); // purple

if count < 5
    alarm[0] = 1;
else
    instance_destroy();

count++;