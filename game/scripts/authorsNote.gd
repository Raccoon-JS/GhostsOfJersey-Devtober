extends Node

func _ready():
	$background.color = colors.trans_colors[0]
	$texts.modulate = Color(colors.trans_colors[4])
	pass # Replace with function body.

func _on_Timer_timeout():
	global.goto_scene("res://scenes/menu.tscn")
	pass # Replace with function body.
