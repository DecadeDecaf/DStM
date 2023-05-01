if (fc > 0) {
	draw_self()
	draw_set_font(fnt_regular)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color($000000)
	draw_set_alpha(0.04)
	var ty = y + 100 + ((image_xscale - 0.5) * 100)
	var dis = 4
	for (var dir = 0; dir < 360; dir += 6) {
		var xx = lengthdir_x(dis, dir)
		var yy = lengthdir_y(dis, dir)
		draw_text_transformed(x + xx, ty + yy, name, 0.8, 0.8, 0)
	}
	draw_set_alpha(1)
	draw_set_color($F4F5FC)
	draw_text_transformed(x, ty, name, 0.8, 0.8, 0)
}