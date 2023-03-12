extends Node

var print_debug_level : int = 6

var text_box_size : int = 128

var current_miniscene : int = 0
var miniscene_actif : int = 0

var unused_var_warnings
var text_box_in_used : bool = false
var objects_clicked : Array

signal object_click(object_name, object_type)
signal keyword_selected(item_name, item_type)

func _ready():
	unused_var_warnings = connect("object_click", self, "_on_Object_Clicked")
	pass # Replace with function body.

func is_already_clicked(object_name) -> bool:
	var was_already_clicked : bool = false
	for object in objects_clicked:
		if object["object_name"] == object_name:
			was_already_clicked = true
			break
	return was_already_clicked

# object_type :
# 0 -> only text
# 1 -> miniscene
# ...
enum{
	object_type_text = 0,
	object_type_miniscene = 1
}
func _on_Object_Clicked(object_name, object_type):
	var i : int = 0
	if not is_already_clicked(object_name):
		objects_clicked.append({"object_name" : object_name, "object_type" : object_type})
	if print_debug_level >= 6:
		for object in objects_clicked:
			print("object : " + str(i))
			print("object_name : " + object["object_name"])
			print("object_type : " + str( object["object_type"]))
			i+=1
	
	pass
