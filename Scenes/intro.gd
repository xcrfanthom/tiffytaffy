extends Node2D

@onready var popup = $ExitPopup

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
			if not popup.visible:
				popup.popup_centered()


func _on_yes_pressed() -> void:
	var next = "res://Scenes/which_room.tscn"
	get_tree().change_scene_to_file(next)


func _on_no_pressed() -> void:
	popup.hide()
