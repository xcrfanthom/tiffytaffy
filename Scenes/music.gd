extends Node

func stop():
	$AudioStreamPlayer.stop()

func _input(event: InputEvent) -> void:
	if !Variables.stop_ex:
		if event.is_action_pressed("ui_cancel"):
			get_tree().quit()

func start_playing():
	$AudioStreamPlayer.play()

func stop_playing():
	$AudioStreamPlayer.stop()

func change_song(song):
	$AudioStreamPlayer.stream = load(song)
