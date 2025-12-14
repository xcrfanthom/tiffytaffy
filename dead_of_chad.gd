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

func show_achievement():
	if (!Variables.poor_herbet):
		Variables.poor_herbet = true
		var tween = create_tween()
		$AudioStreamPlayer3.play()
		tween.set_parallel(true)
		tween.tween_property($VideoStreamPlayer3, "self_modulate:a", 1, 0.5)
		tween.tween_property($VideoStreamPlayer3/Label, "self_modulate:a", 1, 0.5)
		$VideoStreamPlayer3.play()
		await $VideoStreamPlayer3.finished
		var tween2 = create_tween()
		tween2.set_parallel(true)
		tween2.tween_property($VideoStreamPlayer3, "self_modulate:a", 0, 0.5)
		tween2.tween_property($VideoStreamPlayer3/Label, "self_modulate:a", 0, 0.5)

func _on_timer_timeout() -> void:
	show_achievement()
