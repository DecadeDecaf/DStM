draw_set_alpha(1)

if (g.dialog) {
	draw_set_font(fnt_body)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color($000000)
	draw_set_alpha(0.25)
	draw_rectangle(0, 0, 1920, 1080, false)
	draw_set_color($5A6E84)
	draw_set_alpha(1)
	draw_sprite(spr_dialog, speaker, 0, 0 + popup)
	draw_text(35, 760 + popup, string_copy(queue[@ body], 1, progress))
	draw_set_color($8494AA)
	draw_text_transformed(35, 1000 + popup, "(spacebar to continue)", 0.6, 0.6, 0)
}

draw_set_alpha(0.2)
draw_sprite(spr_crumple, 0, 0, 0)
draw_set_alpha(0.1)
draw_sprite(spr_noise, 0, 0, 0)
draw_set_alpha(1)

if (g.land && !g.dialog) {
	draw_set_font(fnt_regular)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color($000000)
	draw_set_alpha(0.15)
	draw_rectangle(0, 0, 1920, 1080, false)
	draw_set_alpha(0.05)
	var dis = 4
	for (var dir = 0; dir < 360; dir += 6) {
		var xx = lengthdir_x(dis, dir)
		var yy = lengthdir_y(dis, dir)
		draw_text(960 + xx, 120 + yy, "Get a move on")
	}
	draw_set_alpha(1)
	draw_set_color($F4F5FC)
	draw_text(960, 120, "Get a move on")
}