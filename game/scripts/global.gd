extends Node

var current_scene = null
var new_scene = null

var character

func _ready():
	character = null
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	pass

func _input(event):
	if event.is_action_pressed("QUIT"):
		get_tree().quit()
	pass

func goto_scene(path):
	new_scene = ResourceLoader.load(path).instance()
	get_tree().get_root().add_child(new_scene)
	get_tree().set_current_scene(new_scene)
	current_scene.queue_free()
	current_scene = new_scene
	pass
