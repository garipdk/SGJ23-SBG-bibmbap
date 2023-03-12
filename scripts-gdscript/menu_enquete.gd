extends Control

const ITEM_CONTAINER = preload("res://scenes/item_presentation.tscn")
const SPACER = preload("res://scenes/v_spacer.tscn")

var is_completing = false
var current_item = ""
var current_item_type = ""

func _ready():
	_on_menu_button_toggled(false)
	
	GameState.connect("keyword_selected",self,"on_keyword_selected")
	
	#add item_conterners
	for key in HypertexteTexts.enquete_item_description:
		var item_container = ITEM_CONTAINER.instance()
		item_container.self_name = key
		$carnet/ScrollContainer/VBoxContainer.add_child(item_container)
		var spacer = SPACER.instance()
		$carnet/ScrollContainer/VBoxContainer.add_child(spacer)
	
	#DEBUG signal
	print('debug signal in menu_enquete')
	for key in HypertexteTexts.enquete_item_description:
		GameState.emit_signal("object_click",key,"test")

func _on_menu_button_toggled(button_pressed):
	visible = button_pressed
	if button_pressed == false:
		is_completing = false

func on_keyword_selected(item_name,item_type):
	is_completing = true
	current_item = item_name
	current_item_type = item_type
	$completing_cursor.set_cursor(item_name)

func keyword_deselect():
	is_completing = false
	$completing_cursor.disable_cursor()
