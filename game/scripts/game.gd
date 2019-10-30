extends Node

onready var textbox = $text_panel/story_text
onready var background = $background
onready var image_background = $image_background
onready var story_en = $story

var event_queue = []
var prev_image = "res://images/Berkeley_Heights_NJ_woods_trans.png"
var next_image = ""
var prev_image_color = colors.bi_colors[3]
var next_image_color = ""
var prev_color = colors.bi_colors[0]
var next_color = ""
var clicks = 0
var original_queue_size = 0

func _ready():
	story_en.request_ready()
	original_queue_size = event_queue.size()
	write_component()
	pass

func _input(event):
	if event.is_action_pressed("left_mouse_button"):
		write_component()
		clicks += 1
	pass

func write(passage = null, b_image = null, b_image_color = null, b_color = null):
	
	if b_image == null:
		next_image = prev_image
	else:
		prev_image = next_image
		next_image = b_image
	
	if b_image_color == null:
		next_image_color = prev_image_color
	else:
		prev_image_color = next_image_color
		next_image_color = b_image_color
	
	if b_color == null:
		next_color = prev_color
	else:
		prev_color = next_color
		next_color = b_color
	
	event_queue.push_front({"passage":passage,"prev_image":prev_image,"next_image":next_image,
		"prev_image_color":prev_image_color,"next_image_color":next_image_color,
		"prev_color":prev_color,"next_color":next_color})
	pass
	
func write_component():
	if clicks == (original_queue_size - 1):
		global.goto_scene("res://scenes/authorsNote.tscn")
	else:
		background.color = event_queue[event_queue.size() - 1]["next_color"]
		image_background.texture = load(event_queue[event_queue.size() - 1]["next_image"])
		image_background.modulate = Color(event_queue[event_queue.size() - 1]["next_image_color"])
		textbox.clear()
		textbox.text = event_queue[event_queue.size() - 1]["passage"]
		textbox.visible_characters = 0
		event_queue.pop_back()
	pass