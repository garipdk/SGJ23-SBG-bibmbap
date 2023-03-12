extends Sprite

func _ready():
	var window_size = OS.window_size
	window_size.y -= GameState.text_box_size
	position = Vector2.ZERO
	scale = window_size

