extends Node
# This is the menu

var button_path = null

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
	elif anim_name == "closing":
		match button_path:
			"start":
				global.goto_scene("res://scenes/character_choice.tscn")
			"credits":
				global.goto_scene("res://scenes/credits.tscn")
			"instruct":
				global.goto_scene("res://scenes/instruction.tscn")
	pass # Replace with function body.

func _on_AnimationPlayer_started(anim_name):
	if anim_name == "closing":
		$buttons/start.disabled = true
		$buttons/credits.disabled = true
		$buttons/instruct.disabled = true
		
	pass # Replace with function body.

func _start_pressed(): # Start the game.
	#global.goto_scene("res://scenes/game.tscn")
	button_path = "start"
	$AnimationPlayer.play("closing")
	pass # Replace with function body.

func _credits_pressed(): # Credits
	#global.goto_scene("res://scenes/credits.tscn")
	button_path = "credits"
	$AnimationPlayer.play("closing")
	pass # Replace with function body.

func _on_instruct_pressed(): # Instruction
	#global.goto_scene("res://scenes/instruction.tscn")
	button_path = "instruct"
	$AnimationPlayer.play("closing")
	pass # Replace with function body.
