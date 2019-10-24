extends Node
# This is the menu

func _ready():
	$background/bg_color.color = colors.bi_colors[4]
	$background/woods.modulate = Color(colors.bi_colors[2])
	$title.modulate = Color(colors.bi_colors[0])
	$AnimationPlayer.play("opening")
	pass # Replace with function body.


func _on_AnimationPlayer_finished(anim_name):
	if anim_name == "opening":
		$buttons/start.disabled = false
		$buttons/credits.disabled = false
		$buttons/instruct.disabled = false
	pass # Replace with function body.

func _start_pressed(): # Start the game.
	global.goto_scene("res://scenes/game.tscn")
	pass # Replace with function body.

func _credits_pressed(): # Credits
	global.goto_scene("res://scenes/credits.tscn")
	pass # Replace with function body.

func _on_instruct_pressed(): # Instruction
	global.goto_scene("res://scenes/instruction.tscn")
	pass # Replace with function body.
