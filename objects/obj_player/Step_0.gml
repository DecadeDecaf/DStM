if (fc > 0) {
	if (tp > 0) {
		tp--
		if (tp >= 10) { image_alpha -= 0.1 } else { image_alpha += 0.1 }
		if (tp == 10) {
			attile = tile
		}
	} else if (tile > attile) {
		ascend = true
		if (fc % 30 == 0) {
			attile++
			if (count > 0) {
				var number = instance_create_depth(x, y - 120, depth + 1, obj_number)
				number.image_index = 3 - count
				count--
			}
			if (attile >= 100) {
				tile = 100
				attile = 100
				ascend = false
				g.land = true
				g.plot++
				g.dialog = true
				with (obj_main) {
					if (g.plot == 1) {
						popup = 1000
						speaker = 1
						body = 0
						queue = ["What does the union want *now*? Higher wages?! Ridiculous.", "Tell ya what, birdbrain. Take these pennies and shove them up the asses\nof every union member."]
						progress = 0
					}
					if (g.plot == 3) {
						popup = 1000
						speaker = 1
						body = 0
						queue = ["Not a fan of the pennies, huh? Well, we ain't budging.", "All this wasted company time is a damned shame.", "Here, why don't you take it?"]
						progress = 0
					}
					if (g.plot == 5) {
						popup = 1000
						speaker = 1
						body = 0
						queue = ["You're telling me the union wants living wages, maternity leave, AND a\nsafe work environment?!", "Is this some kinda joke?!", "Welp, we can't afford to up and fire all of 'em. Where do I sign?", "[Don't Chute the Messenger was made in less than 48 hours for the Ludum\nDare 53 compo. All design, art, programming, music, writing, etc. was made\nby one person within the timeframe.]", "[Thank you for playing!]"]
						progress = 0
					}
				}
			}
		}
	} else if (tile < attile) {
		ascend = false
		if (fc % 30 == 0) {
			attile--
			if (count > 0) {
				var number = instance_create_depth(x, y - 120, depth + 1, obj_number)
				number.image_index = 3 - count
				count--
			}
			if (attile <= 1) {
				tile = 1
				attile = 1
				ascend = true
				g.land = true
				g.plot++
				g.dialog = true
				with (obj_main) {
					if (g.plot == 2) {
						popup = 1000
						speaker = 0
						body = 0
						queue = ["Pennies. Very funny. We have *lives* to live, ya know. Families to feed. Is\nmanagement even aware of that?!", "'Scuse us, friend. But do you mind going up there and delivering another\nmessage?", "Here's an extra die to help you out. Thanks a ton."]
						progress = 0
					}
					if (g.plot == 4) {
						popup = 1000
						speaker = 0
						body = 0
						queue = ["This is going nowhere...", "As a final request, could you deliver this envelope to management as\nwell? It outlines our three stipulations and whatnot.", "Thanks again for your time, fledgling."]
						progress = 0
					}
				}
			}
		}
		
	} else if (!g.land) {
		if (tile == 7) {
			tile = 14
			tp = 20
		} else if (tile == 16) {
			tile = 4
			tp = 20
		} else if (tile == 19) {
			tile = 22
			tp = 20
		} else if (tile == 30) {
			tile = 12
			tp = 20
		} else if (tile == 15) {
			tile = 35
			tp = 20
		} else if (tile == 34) {
			tile = 28
			tp = 20
		} else if (tile == 43) {
			tile = choose(39, 37)
			tp = 20
		} else if (tile == 41) {
			tile = 61
			tp = 20
		} else if (tile == 59) {
			tile = 62
			tp = 20
		} else if (tile == 51) {
			tile = 49
			tp = 20
		} else if (tile == 79) {
			tile = 82
			tp = 20
		} else if (tile == 78) {
			tile = 83
			tp = 20
		} else if (tile == 77) {
			tile = 84
			tp = 20
		} else if (tile == 72) {
			tile = 54
			tp = 20
		} else if (tile == 65) {
			tile = 55
			tp = 20
		}
		g.land = true
	}
}

var flip = (floor(max(0, attile - 1) / 10) % 2 == 0)
image_xscale = (flip ? 1 : -1)
var xlen = 167
var xleft = 200
var xoff = (((attile - 1) % 10) * xlen)
x = (attile == 0 ? 33 : (flip ? xleft + xoff : (xleft + (xlen * 9)) - xoff))
y = (attile <= 10 ? 4255 : 4235 - floor(max(0, attile - 1) / 10) * 400)

if (g.fc > 60) {
	var cam = instance_nearest(x, y, obj_camera)
	cam.looky = median(0, y, 3780)
}