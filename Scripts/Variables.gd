extends Node

var sociability = 50:
	set(value):
		clamp(value, 0 , 100)
var health = 50:
	set(value):
		clamp(value, 0 , 100)
var sanity = 50:
	set(value):
		clamp(value, 0 , 100)
var event_counter : int = 0

func _process(_delta: float) -> void:
	if (sociability==0 or health==0 or sanity ==0):
		get_tree().change_scene_to_file("placeholder")
	elif (sociability==100 or health==100 or sanity==100):
		get_tree().change_scene_to_file("placeholder")
	elif (event_counter >= 10):
		get_tree().change_scene_to_file("placeholder")
