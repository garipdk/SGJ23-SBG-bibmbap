extends Control

var is_completing = false

func _ready():
	_on_menu_button_toggled(false)
	#GameState.emit_signal("object_click","key","test")

func _on_menu_button_toggled(button_pressed):
	visible = button_pressed
	if button_pressed == false:
		is_completing = false
