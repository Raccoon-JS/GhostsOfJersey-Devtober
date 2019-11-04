extends ColorRect


func _select_ashley():
	global.character = "ashley"
	to_the_story()
	pass # Replace with function body.

func _select_bernard():
	global.character = "bernard"
	to_the_story()
	pass # Replace with function body.

func to_the_story():
	global.goto_scene("res://scenes/game.tscn")
	pass