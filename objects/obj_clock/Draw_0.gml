draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, -1, image_alpha)

var rot = ((result - 1) * -30) - (done ? 0 : (fc * 12))
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, rot, -1, image_alpha)

if (done) {
	draw_set_font(fnt_regular)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color($000000)
	draw_set_alpha(0.08)
	var dis = 3
	for (var dir = 0; dir < 360; dir += 6) {
		var xx = lengthdir_x(dis, dir)
		var yy = lengthdir_y(dis, dir)
		draw_text_transformed(x + xx, y + yy, string(result), 0.6, 0.6, 0)
	}
	draw_set_alpha(0.4)
	draw_set_color($F4F5FC)
	var dis = 0.25
	for (var dir = 0; dir < 360; dir += 12) {
		var xx = lengthdir_x(dis, dir)
		var yy = lengthdir_y(dis, dir)
		draw_text_transformed(x + xx, y + yy, string(result), 0.6, 0.6, 0)
	}
}