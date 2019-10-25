extends Node

func _ready():
	$color_background.color = Color(colors.trans_colors[4])
	$other_logos/devtober.modulate = colors.trans_colors[1]
	$other_logos/cryptid.modulate = colors.trans_colors[1]
	$other_logos/gentle_ghosts.modulate = colors.trans_colors[1]
	$other_logos/bara_jam.modulate = colors.trans_colors[1]
	$player.play("opening")
	pass # Replace with function body.

func _on_player_animation_finished(anim_name):
	if anim_name == "opening":
		global.goto_scene("res://scenes/menu.tscn")
	pass # Replace with function body.
