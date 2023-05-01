if (!done) {
	x += xv
	y += yv
	if (y > ground) {
		y = ground
		yv *= -0.4
		if (abs(yv) < 4) {
			image_index = 2
			image_angle = random_range(85, 90)
			done = true
		}
	} else {
		yv += 0.4
		xv /= 1.03
		if (fc % 40 == 0) {
			image_index = 2
			image_angle = random_range(0, 360)
		} else if (fc % 40 == 10 || fc % 40 == 30) {
			image_index = 3
			image_angle = random_range(0, 360)
		} else if (fc % 40 == 20) {
			image_index = irandom_range(0, 1)
			image_angle = random_range(0, 360)
		}
	}
} else {
	fade++
	if (fade > 30) {
		image_index = result
		image_angle = 0
		if (fade < 40) {
			y -= 4
		}
		if (fade > 65) {
			image_alpha -= 0.1
			if (image_alpha <= 0) {
				instance_destroy()
			}
		}
	}
}