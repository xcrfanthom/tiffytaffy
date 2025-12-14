extends Control

func _ready() -> void:
	Music.stop()

func _on_video_stream_player_finished() -> void:
	$VideoStreamPlayer.self_modulate.a = 0
	$VideoStreamPlayer2.play()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed or event.button_index == MOUSE_BUTTON_LEFT:
			$AudioStreamPlayer2.play()
			await $AudioStreamPlayer2.finished
			TransitionLayer.change_scene("res://Scenes/which_room.tscn")
