handle_fullscreen()

var r = keyboard_check_pressed(ord("R"))
if (r) { game_restart() }

if (g.dialog) {
	if (g.fc > 60) {
		if (popup > 10) {
			popup -= (popup - 0) / 24
		} else if (progress < string_length(queue[@ body])) {
			progress += 0.8
		} else if (keyboard_check_pressed(vk_space)) {
			if (body + 1 < array_length(queue)) {
				progress = 0
				body++
			} else {
				g.dialog = false
				if (g.plot == 5) {
					game_end()
				}
			}
		}
	}
} else if (g.land) {
	if (!g.spinners) {
		var spinner
		if (g.plot >= 2) {
			spinner = instance_create_depth(960, 400, -1, obj_spinners)
			spinner.stype = 4
			spinner.image_index = spinner.stype
		} else {
			spinner = instance_create_depth(960, 400, -1, obj_spinners)
			spinner.stype = 0
			spinner.image_index = spinner.stype
		}
		if (g.plot >= 1) {
			spinner = instance_create_depth(960, 700, -1, obj_spinners)
			spinner.stype = 1
			spinner.image_index = spinner.stype
		}
		if (g.plot >= 4) {
			spinner = instance_create_depth(610, 550, -1, obj_spinners)
			spinner.stype = 2
			spinner.image_index = spinner.stype
		}
		if (g.plot >= 3) {
			spinner = instance_create_depth(1310, 550, -1, obj_spinners)
			spinner.stype = 3
			spinner.image_index = spinner.stype
		}
		g.spinners = true
	}
}

if (!g.dialog) {
	if (popup < 990) {
		popup -= (popup - 1000) / 24
	}
}