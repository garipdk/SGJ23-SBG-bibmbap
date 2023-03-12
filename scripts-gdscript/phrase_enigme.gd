extends RichTextLabel

var placeholder = "?" #symbol used for places to complete

func _ready():
	HypertexteTexts.base_text = bbcode_text
	HypertexteTexts.good_text = $store_good_text.bbcode_text

func _on_phrase_enigme_meta_clicked(meta):
	if get_parent().is_completing:
		#check if good type
		var meta_item = HypertexteTexts.in_text_correspondances[meta]
		var meta_type = HypertexteTexts.enquete_item_type[meta_item]["type"]
		if meta_type == get_parent().current_item_type:
			
			#complete
			#get_text
			var display_text = bbcode_text
			var replace_text = get_parent().current_item
			
			#replace text between meta+"]" and "[" w/ my replace_text
			var pos_begin = display_text.find(meta)+meta.length()+1
			var end_pos = display_text.find("[",pos_begin)
			display_text.erase(pos_begin,end_pos-pos_begin)
			display_text = display_text.insert(pos_begin,get_parent().current_item)
			
			bbcode_text = display_text
			
			#unselect
			get_parent().keyword_deselect()
		else:
			#bad type
#			print("bad type selected")
			pass
	else:
		#display tuto infos
		pass


func _on_check_button_pressed():
	print(bbcode_text)
	
	var display_text = bbcode_text
#	var display_text = ""
	if display_text.find(placeholder) == -1:
		#no place holder
		
		#-> reset cursor
		get_parent().keyword_deselect()
		
		#-> check text
		if display_text == HypertexteTexts.good_text:
			print("success")
			get_parent().get_node("GO_menu").show_go()
		else:
			printt("echec...",display_text,HypertexteTexts.good_text)
			bbcode_text = HypertexteTexts.base_text
	else :
		#text not completed
		pass
