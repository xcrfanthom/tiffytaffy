extends Control

var time_edit = 0.1
var one_open = false

func _on_button_button_up() -> void:
	if ($Happy/TextureButton.disabled == true and one_open==false):
		one_open = true
		var tween = create_tween()
		tween.set_parallel(true)
		tween.tween_property($Sad, "position", Vector2(-358.0, -69), time_edit)
		tween.tween_property($Explosion, "position", Vector2(-362, 211), time_edit)
		tween.tween_property($Happy/TextureButton, "self_modulate:a", 1, time_edit*1.25)
		tween.tween_property($Happy/TextureButton/Label, "self_modulate:a", 1, time_edit*1.25)
		await tween.finished
		$Happy/TextureButton.disabled = false
	elif($Happy/TextureButton.disabled == false and one_open==true):
		one_open = false
		var tween = create_tween()
		tween.set_parallel(true)
		tween.tween_property($Sad, "position", Vector2(-358.0, -329), time_edit)
		tween.tween_property($Explosion, "position", Vector2(-362, -25), time_edit)
		tween.tween_property($Happy/TextureButton, "self_modulate:a", 0, time_edit*1.25)
		tween.tween_property($Happy/TextureButton/Label, "self_modulate:a", 0, time_edit*1.25)
		await tween.finished
		$Happy/TextureButton.disabled = true

func _on_texture_button_button_up() -> void:
	Variables.in_game = false
	TransitionLayer.change_scene("res://Scenes/happy_chad.tscn")


func _on_button_sad_button_up() -> void:
	if ($Sad/TextureButtonSad.disabled == true and one_open==false):
		one_open = true
		var tween = create_tween()
		tween.set_parallel(true)
		tween.tween_property($Explosion, "position", Vector2(-362, 211), time_edit)
		tween.tween_property($Sad/TextureButtonSad, "self_modulate:a", 1, time_edit*1.25)
		tween.tween_property($Sad/TextureButtonSad/Label, "self_modulate:a", 1, time_edit*1.25)
		await tween.finished
		$Sad/TextureButtonSad.disabled = false
	elif($Sad/TextureButtonSad.disabled == false and one_open==true):
		one_open = false
		var tween = create_tween()
		tween.set_parallel(true)
		tween.tween_property($Explosion, "position", Vector2(-362, -25), time_edit)
		tween.tween_property($Sad/TextureButtonSad, "self_modulate:a", 0, time_edit*1.25)
		tween.tween_property($Sad/TextureButtonSad/Label, "self_modulate:a", 0, time_edit*1.25)
		await tween.finished
		$Sad/TextureButtonSad.disabled = true

func _on_texture_button_sad_button_up() -> void:
	Variables.in_game = false
	TransitionLayer.change_scene("res://Scenes/dead_of_chad.tscn")
