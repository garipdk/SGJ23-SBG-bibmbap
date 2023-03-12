extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GameState.text_box_size = $PanelContainer.rect_size.y
	self.visible = false
	GameState.unused_var_warnings = GameState.connect("object_click", self, "_object_clicked_text_on_screen")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _object_clicked_text_on_screen(object_name, object_type):
	if object_type >= 0:
		self.visible = true
		$PanelContainer.load_text(object_name, HypertexteTexts.description)
		GameState.text_box_in_used = true
	
func _exit_text_input(event):
	if event is InputEventMouseButton\
	   and event.pressed and event.button_index == BUTTON_LEFT:
		self.visible = false
		GameState.text_box_in_used = false
