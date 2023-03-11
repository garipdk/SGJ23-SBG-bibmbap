extends Control

func load_text(meta):
	var dico = HypertexteTexts.item_description
	print(dico.keys(),meta)
	if dico.has(meta):
		var item_description = dico[meta]
		var title = item_description["title"]
		var description = item_description["text"]
		$RichTextLabel.bbcode_text = "[b]"+title+"[/b]\n"+description
		
#		$ColorRect.rect_size = $RichTextLabel.rect_size
#		$ColorRect.rect_position = $RichTextLabel.rect_position
