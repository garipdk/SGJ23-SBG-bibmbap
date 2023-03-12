extends Sprite

var canvas_size = 2.0

func _ready():
	var window_size = OS.window_size
	window_size.y -= GameState.text_box_size
	position = window_size * ((1.0 - canvas_size)/2)
	scale = window_size * canvas_size
	pass
