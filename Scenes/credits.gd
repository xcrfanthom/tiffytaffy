extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Music.stop()


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			var file = FileAccess.open("rr", FileAccess.WRITE)
			if file:
				file.store_string("when_things_go_boom")
				file.close()
			get_tree().quit()
			
func _on_timer_timeout() -> void:
	if (!Variables.exploded):
		Variables.exploded = true
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
