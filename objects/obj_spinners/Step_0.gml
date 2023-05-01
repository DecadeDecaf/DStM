switch (stype) {
	case 0: name = "D6"; break
	case 1: name = "10x pennies"; break
	case 2: name = "union agreement"; break
	case 3: name = "company time"; break
	case 4: name = "snake eyes"; break
	default: break
}

var cam = instance_nearest(x, y, obj_camera)
var mx = (mouse_x - cam.x) + 960
var my = (mouse_y - cam.y) + 540

if (position_meeting(mx, my, id)) {
	if (image_xscale < 0.625) {
		image_xscale += 0.025
		image_yscale += 0.025
	}
	if (mouse_check_button_pressed(mb_left)) {
		with (obj_player) {
			var roll = 0
			if (o.stype == 0) {
				roll = irandom_range(1, 6)
				var die = instance_create_depth(x, y, depth + 1, obj_die)
				die.result = roll - 1
			} else if (o.stype == 1) {
				for (var i = 0; i < 10; i++) {
					var toss = irandom_range(0, 1)
					var penny = instance_create_depth(x, y, depth + 1, obj_penny)
					penny.result = toss
					roll += toss
				}
			} else if (o.stype == 2) {
				for (var i = 0; i < 10; i++) {
					roll = 3
					with (obj_player) {
						count = 3
					}
				}
			} else if (o.stype == 4) {
				for (var i = 0; i < 2; i++) {
					troll = irandom_range(1, 6)
					var die = instance_create_depth(x, y, depth + 1, obj_die)
					die.result = troll - 1
					roll += troll
				}
			} else if (o.stype == 3) {
				roll = irandom_range(1, 12)
				var clock = instance_create_depth(x, y, depth + 1, obj_clock)
				clock.result = roll
			}
			tile += (ascend ? roll : -roll)
		}
		g.land = false
		g.spinners = false
		instance_destroy(obj_spinners)
	}
} else {
	if (image_xscale > 0.5) {
		image_xscale -= 0.025
		image_yscale -= 0.025
	}
}