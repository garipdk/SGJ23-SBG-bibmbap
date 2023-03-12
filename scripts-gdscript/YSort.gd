extends YSort


func _ready():
	GameState.connect("object_click", self, "_on_miniscene_visible")
	for c in get_children():
		c.add_to_group("miniscene_" + str(c.minscene_number))
	pass

func _on_miniscene_visible(object_name, object_type):
	var miniscene_name : String
	if object_type == GameState.object_type_miniscene:
		miniscene_name = object_name + "_miniscene"
		for c in get_children():
			if c.name == miniscene_name:
				GameState.current_miniscene = c.minscene_number
				c.visible = true
				break
