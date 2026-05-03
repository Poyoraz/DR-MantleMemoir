var spd = 10
x+=spd;
y+=spd;
movelen+=spd;
if movelen >= 64 {
	movelen = 0;
	x=guipos_x();
	y=guipos_y();
}