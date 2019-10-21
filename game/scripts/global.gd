extends Node

var current_scene = null
var new_scene = null

func goto_scene(path):
	new_scene = ResourceLoader.load(path).instance()
	get_tree().get_root().add_child(new_scene)
	get_tree().set_current_scene(new_scene)
	current_scene.queue_free()
	current_scene = new_scene
	pass
