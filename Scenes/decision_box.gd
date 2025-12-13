extends Node2D
class_name DecisionBox

const upPosition = -10000
const downPosition = -3350

var textAns1 : String
var textAns2 : String
var textAns3 : String

var effectAns1 : Array[int]
var effectAns2 : Array[int]
var effectAns3 : Array[int]

var eventAns : Array

var first = true
var animation_time = 1.0

signal addEvent(event)

@onready var sprite = $Sprite2D

func _ready() -> void:
	$Sprite2D/TextureButton/Label.text = textAns1
	$Sprite2D/TextureButton2/Label.text = textAns2
	$Sprite2D/TextureButton3/Label.text = textAns3
	sprite.position.y = upPosition
	sprite.self_modulate.a = 0
	sprite.modulate.a = 0
	do_animation()
	print("got out of do animation")

func _process(delta: float) -> void:
	print(sprite.position)
	print(sprite.self_modulate)

func _on_texture_button_button_down() -> void:
	var button = $Sprite2D/TextureButton/Label
	button.position.y = 2.47

func _on_texture_button_2_button_down() -> void:
	var button = $Sprite2D/TextureButton2/Label
	button.position.y = 2.236

func _on_texture_button_button_up() -> void:
	$Sprite2D/TextureButton/Label.position.y = 0.992
	$"../QuestionTimer".start()
	Variables.sanity += effectAns1[2]
	Variables.health += effectAns1[1]
	Variables.sociability += effectAns1[0]
	if (1 in eventAns[0]):
		addEvent.emit(eventAns[1])
	do_animation()

func _on_texture_button_2_button_up() -> void:
	$Sprite2D/TextureButton2/Label.position.y = 1.138
	$"../QuestionTimer".start()
	Variables.sanity += effectAns2[2]
	Variables.health += effectAns2[1]
	Variables.sociability += effectAns2[0]
	if (2 in eventAns[0]):
		addEvent.emit(eventAns[1])
	do_animation()

func _on_texture_button_3_button_down() -> void:
	var button = $Sprite2D/TextureButton3/Label
	button.position.y = 2.294

func _on_texture_button_3_button_up() -> void:
	$Sprite2D/TextureButton3/Label.position.y = 1.197
	$"../QuestionTimer".start()
	Variables.sanity += effectAns3[2]
	Variables.health += effectAns3[1]
	Variables.sociability += effectAns3[0]
	if (3 in eventAns[0]):
		addEvent.emit(eventAns[1])
	do_animation()

func do_animation() -> void:
	if (first):
		print("In animation first")
		var tween = create_tween()
		tween.set_parallel(true)
		tween.tween_property($Sprite2D, "position", Vector2(sprite.position.x, downPosition), animation_time)
		tween.tween_property($Sprite2D, "self_modulate:a", 1, animation_time*0.75)
		tween.tween_property($Sprite2D, "modulate:a", 1, animation_time*0.75)
		
		await tween.finished
		animation_time = 0.75
		first = false
	else:
		print("In animation no first")
		var tween = create_tween()
		tween.set_parallel(true)
		tween.tween_property($Sprite2D, "position", Vector2(sprite.position.x, upPosition), animation_time)
		tween.tween_property($Sprite2D, "self_modulate:a", 0, animation_time*0.75)
		tween.tween_property($Sprite2D, "modulate:a", 0, animation_time*0.75)
		await tween.finished
		queue_free()
