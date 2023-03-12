extends Node2D

export(float, 2.0, 2.0) var canvas_size = 1.0
export(int, 1, 1000000000) var minscene_number = 1
var one_time : bool = true
func _ready():
	$Button.connect("pressed",self,"_on_gray_font_gui_input")
	$blanc_canvas.canvas_size = canvas_size
	self.visible = false
	for c in get_children():
		c.add_to_group("miniscene_" + str(minscene_number))

func _process(_delta):
	if self.visible and one_time:
		GameState.miniscene_actif += 1
		one_time = false
func _on_gray_font_gui_input():
	self.visible = false
	GameState.miniscene_actif -= 1
	if GameState.miniscene_actif == 0:
		GameState.current_miniscene = 0
	one_time = true
	pass # Replace with function body.
