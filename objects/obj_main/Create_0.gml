#macro g global
#macro o other

randomize()

g.fc = 0

g.land = true
g.spinners = false

audio_master_gain(0.75)
g.mute = false

audio_play_sound(mus_theme, 1, true)

g.plot = 0
g.dialog = true
popup = 1000
speaker = 0
body = 0
queue = ["No pay, no way! No pay, no way!", "Oh hey there little birdy. We're on strike. Mind delivering a message to\nmanagement for us?", "Tell 'em we WON'T HAVE IT with these unfair labor practices, would ya?\nThanks pal."]
progress = 0

exception_unhandled_handler(error)