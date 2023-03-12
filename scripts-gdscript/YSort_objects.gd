extends YSort


func _ready():
	for c in get_children():
		c.add_to_group("objects")
	pass
