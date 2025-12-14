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
	show_achievement()

func show_achievement():
	if (!Variables.touched_grass):
		Variables.touched_grass = true
		var tween = create_tween()
		$AudioStreamPlayer4.play()
		tween.set_parallel(true)
		tween.tween_property($VideoStreamPlayer3, "self_modulate:a", 1, 0.5)
		tween.tween_property($VideoStreamPlayer3/Label, "self_modulate:a", 1, 0.5)
		$VideoStreamPlayer3.play()
		await $VideoStreamPlayer3.finished
		var tween2 = create_tween()
		tween2.set_parallel(true)
		tween2.tween_property($VideoStreamPlayer3, "self_modulate:a", 0, 0.5)
		tween2.tween_property($VideoStreamPlayer3/Label, "self_modulate:a", 0, 0.5)


func _on_timer_2_timeout() -> void:
	$AudioStreamPlayer3.playing = true
