extends HBoxContainer

signal keyword_selected(keyword_name,keyword_type)

export(String) var self_name ="key"

var is_discovered = false

var item_dico

func _ready():
	GameState.connect("object_click",self,"on_object_click")
	
	var dico = HypertexteTexts.enquete_item_description
	if not dico.has(self_name):return
	item_dico = dico[self_name]
	
	#hide texture and text
	$TextureRect.texture = load(item_dico["hidden_texture_path"])
	$item_presentation_text.visible = false
	
	#load text
	if HypertexteTexts.enquete_item_description.has(self_name):
		$item_presentation_text.bbcode_text = item_dico["text"]

func on_object_click(object_name, object_type):
	if is_discovered:return
	if object_name == self_name:
		$TextureRect.texture = load(item_dico["found_texture_path"])
		$item_presentation_text.visible = true

func _on_item_presentation_text_meta_clicked(meta):
	#check dictionnary w/ meta
	pass
#	var info_dico = parse_json(meta)
#	print(info_dico)
