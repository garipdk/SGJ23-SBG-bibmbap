extends Node

var print_debug_level : int = 6

var unused_var_warnings

var objects_clicked : Array

signal object_click(object_name, object_type)

func _ready():
	unused_var_warnings = connect("object_click", self, "_on_Object_Clicked")
	pass # Replace with function body.

# object_type :
# 0 -> only text
# 1 -> miniscene
# ...
func _on_Object_Clicked(object_name, object_type):
	var was_already_clicked : bool = false
	var i : int = 0
	for object in objects_clicked:
		if object["object_name"] == object_name:
			was_already_clicked = true
			break
	
	if not was_already_clicked:
		objects_clicked.append({"object_name" : object_name, "object_type" : object_type})
	if print_debug_level >= 6:
		for object in objects_clicked:
			print("object : " + str(i))
			print("object_name : " + object["object_name"])
			print("object_type : " + str( object["object_type"]))
			i+=1
	
	pass
