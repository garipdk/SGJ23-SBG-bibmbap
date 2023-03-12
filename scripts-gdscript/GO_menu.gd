extends Control

func _ready():
	#hide or smthing
	hide_go()

func hide_go():
	visible = false

func show_go():
	#visibility
	visible = true
	
	#generate text
	var to_display_text = HypertexteTexts.good_text + "\n\n" + HypertexteTexts.end_sentance
	
	$"texte complet".bbcode_text = to_display_text
