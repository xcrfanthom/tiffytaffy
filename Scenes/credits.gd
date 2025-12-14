extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Music.stop()


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed or event.button_index == MOUSE_BUTTON_LEFT:
			TransitionLayer.change_scene("res://Scenes/which_room.tscn")
