extends RichTextLabel

const PANEL = preload("res://scenes/hyper_panel.tscn")

var current_panel
var current_meta

func show_panel():
	current_panel = PANEL.instance()
	current_panel.load_text(current_meta, HypertexteTexts.item_description)
	get_parent().add_child(current_panel)
	current_panel.rect_global_position = get_global_mouse_position()+Vector2(-20,-40)

func hide_panel():
	if current_panel:
		current_panel.queue_free()
		current_panel = null


func _on_hypertexte_meta_hover_started(meta):
	$display_info_timer.start()
	current_meta = meta

func _on_hypertexte_meta_hover_ended(meta):
	hide_panel()
	$display_info_timer.stop()

func _on_display_info_timer_timeout():
	show_panel()
