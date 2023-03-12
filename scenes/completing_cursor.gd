extends Node2D

export(Vector2) var cursor_offset = Vector2(0,-15)

func _ready():
	disable_cursor()

func disable_cursor():
	visible = false
	set_process(false)

func set_cursor(label_text:String):
	visible = true
	set_process(true)
	$Label.text = label_text

func _process(delta):
	global_position = get_global_mouse_position()+cursor_offset
