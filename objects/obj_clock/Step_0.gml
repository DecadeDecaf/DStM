if (!done) {
	y += yv
	if (fc >= 30) {
		done = true
	} else {
		yv /= 1.05
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