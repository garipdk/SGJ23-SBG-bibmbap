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
		var new_bbcode = item_dico["text"]
		for color_key in HypertexteTexts.text_colors_keys:
			new_bbcode = new_bbcode.replace(color_key,HypertexteTexts.text_colors_keys[color_key])
		$item_presentation_text.bbcode_text = new_bbcode

func on_object_click(object_name, object_type):
	if is_discovered:return
	if object_name == self_name:
		$TextureRect.texture = load(item_dico["found_texture_path"])
		$item_presentation_text.visible = true

func _on_item_presentation_text_meta_clicked(meta):
	if not HypertexteTexts.enquete_item_type.has(meta):
		print("ERREUR, objet inconnu : "+String(meta))
		return
	
	var item_type_dico = HypertexteTexts.enquete_item_type[meta]
	var item_type = item_type_dico["type"]
	GameState.emit_signal("keyword_selected",meta,item_type)
