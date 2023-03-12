extends Node2D

export(float, 0.1, 0.9) var canvas_size = 0.9

var one_time : bool = true
func _ready():
	$blanc_canvas.canvas_size = canvas_size
	self.visible = false
	for c in get_children():
		c.add_to_group("miniscene")

func _process(_delta):
	if self.visible and one_time:
		GameState.miniscene_actif += 1
		one_time = false
func _on_gray_font_gui_input():
	self.visible = false
	GameState.miniscene_actif -= 1
	one_time = true
	pass # Replace with function body.
