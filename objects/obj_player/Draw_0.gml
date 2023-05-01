var dx = x
var dy = y
var sqz = 0

var alph = image_alpha

var dxs = image_xscale
if (!ascend) { dxs = -dxs }
var flip = (dxs < 0)

if (tile != attile && tp <= 0) {
	var cyc = (max(0, fc - 1) % 30)
	dx += cyc * (flip ? -5.55 : 5.55)
	dy -= (cyc < 17 ? cyc * 1.5 : 25.5 - ((cyc - 17) * 1.5))
	sqz += (cyc < 17 ? cyc / 100 : 0.17 - ((cyc - 17) / 80))
	if (((attile - 1) % 10 == 9 && ascend) || ((attile - 1) % 10 == 0 && !ascend)) {
		alph = 1 - min(cyc / 20, 1)
	} else if (((attile - 1) % 10 == 0 && ascend) || ((attile - 1) % 10 == 9 && !ascend)) {
		alph = min(cyc / 10, 1)
	}
}


draw_sprite_ext(sprite_index, image_index, dx, dy, dxs + (flip ? sqz : -sqz), image_yscale + sqz, 0, -1, alph)