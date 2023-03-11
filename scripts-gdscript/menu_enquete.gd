extends Control

func _ready():
	_on_menu_button_toggled(false)

func _on_menu_button_toggled(button_pressed):
	visible = button_pressed
