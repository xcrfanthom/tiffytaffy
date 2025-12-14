extends Control

@onready var panel = $Panel
@onready var yes_button = $Panel/Yes
@onready var no_button = $Panel/No
@onready var rich_text = $Panel/Label

var is_open := false

func _ready():
	panel.visible = false
	rich_text.bbcode_enabled = true
	_set_rich_text_content()

	yes_button.pressed.connect(_on_yes_pressed)
	no_button.pressed.connect(_on_no_pressed)

func _input(event):
	if is_open:
		return

	if event is InputEventMouseButton \
	and event.pressed \
	and event.button_index == MOUSE_BUTTON_LEFT:
		_open_panel()

func _open_panel():
	is_open = true
	panel.visible = true

func _on_yes_pressed():
		TransitionLayer.change_scene("res://Scenes/which_room.tscn")

func _on_no_pressed():
	_close_panel()

func _close_panel():
	panel.visible = false
	is_open = false

func _set_rich_text_content():
	rich_text.text = """
[font_size=40][b]Leave this scene?[/b][/font_size]

Do you want to continue to the next room?

[color=red]Yes[/color] → leave scene  
[color=green]No[/color] → stay here
"""
