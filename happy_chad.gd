extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Music.stop()

func _on_video_stream_player_finished() -> void:
	$VideoStreamPlayer.self_modulate.a = 0
	$VideoStreamPlayer2.play()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed or event.button_index == MOUSE_BUTTON_LEFT:
			TransitionLayer.change_scene("res://Scenes/which_room.tscn")

func _on_timer_timeout() -> void:
	$AudioStreamPlayer2.play()


func _on_timer_2_timeout() -> void:
	$AudioStreamPlayer3.playing = true
