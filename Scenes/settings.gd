extends Control

@onready var master_slider = $VBoxContainer/MasterSlider
@onready var music_slider = $VBoxContainer/MusicSlider
@onready var sfx_slider = $VBoxContainer/SFXSlider

func _ready():
	# Load saved settings
	master_slider.value = AudioServer.get_bus_volume_db(0)
	music_slider.value = AudioServer.get_bus_volume_db(1)
	sfx_slider.value = AudioServer.get_bus_volume_db(2)

func _on_master_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, value)

func _on_music_slider_value_changed(value):
	AudioServer.set_bus_volume_db(1, value)

func _on_sfx_slider_value_changed(value):
	AudioServer.set_bus_volume_db(2, value)

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
