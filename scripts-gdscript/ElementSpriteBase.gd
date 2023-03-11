extends Area2D
class_name ElementSpriteBase

export(bool) var is_usable = true
export(bool) var has_limited_trys = true
export(int) var number_of_try = 1
var limit_try = 0
export(bool) var must_disapear = false
var sprite : Sprite

export(int) var childrens_main_sprite = 0

var is_persone : bool = false

var is_death : bool = false

var shinies : Array = []
func _ready():
	if childrens_main_sprite >= get_child_count():
		childrens_main_sprite = 0
	sprite  = get_child(childrens_main_sprite)
	var collision = CollisionShape2D.new()
	collision.shape = RectangleShape2D.new()
	var extents : Vector2 = sprite.get_rect().size/2
	get_shinies()
	extents.x *= sprite.scale.x
	extents.y *= sprite.scale.y
	collision.shape.extents = extents
	GameState.unused_var_warnings = connect('mouse_entered', self, '_on_mouse_entered')
	GameState.unused_var_warnings = connect('mouse_exited', self, '_on_mouse_exited')
	for s in shinies:
		s.visible = false
	
	add_child(collision)
	print(name, ' ready')

	if must_disapear and not is_usable:
		sprite.visible = false
		for s in shinies:
			s.visible = false

func _input_event(_viewport, event, _shape_idx):
	if is_usable:
		var can_click = true
		if has_limited_trys:
			can_click = limit_try < number_of_try
		if can_click and event is InputEventMouseButton\
		   and event.pressed and event.button_index == BUTTON_LEFT\
		   and not GameState.text_menu_is_used:
				number_of_try-=1
	else:
		for s in shinies:
			s.visible = false
		if must_disapear:
			sprite.visible = false

func _process(_delta):
	if must_disapear and (limit_try == number_of_try or not has_limited_trys):
		sprite.visible = false
		for s in shinies:
			s.visible = false

func get_shinies():
	var i : int = 0
	var lastChar : int
	for c in get_children():
		lastChar = ord(c.name[c.name.length() - 1])
		if lastChar >= 48 and lastChar <= 57 and i != childrens_main_sprite:
			shinies.append(c)
		i+=1

func _on_mouse_entered():
	if is_usable:
		var can_click = true
		if has_limited_trys:
			can_click = limit_try < number_of_try
		if can_click:
			for s in shinies:
				s.visible = true
		else:
			for s in shinies:
				s.visible = false
	else:
		for s in shinies:
			s.visible = false

func _on_mouse_exited():
	if is_usable:
		for s in shinies:
			s.visible = false
	
func get_class(): return "ElementSpriteBase"
