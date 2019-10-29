extends RichTextLabel

func _ready():
	visible_characters = 0
	pass # Replace with function body.

func _on_timer_timeout():
	visible_characters = visible_characters + 1
	pass # Replace with function body.
