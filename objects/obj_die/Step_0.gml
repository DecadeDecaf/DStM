if (!done) {
	x += xv
	y += yv
	if (y > ground) {
		y = ground
		yv *= -0.5
		if (abs(yv) < 4) {
			image_index = result
			image_angle = 0
			done = true
		}
	} else {
		yv += 0.5
		xv /= 1.05
		if (fc % 20 == 0) {
			image_index = 6
			image_angle = random_range(0, 360)
		} else if (fc % 20 == 10) {
			image_index = irandom_range(0, 5)
			image_angle = random_range(0, 360)
		}
	}
} else {
	fade++
	if (fade > 30) {
		image_alpha -= 0.1
		if (image_alpha <= 0) {
			instance_destroy()
		}
	}
}