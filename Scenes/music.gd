extends Node

func stop():
	$AudioStreamPlayer.stop()

func _input(event: InputEvent) -> void:
	if !Variables.stop_ex:
		if event.is_action_pressed("ui_cancel"):
			get_tree().quit()
