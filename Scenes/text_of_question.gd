extends Node2D
class_name TextOfQuestion

var textOfLabel : String


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control/Label.text = textOfLabel
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property($Control/Label, "visible_characters", $Control/Label.get_total_character_count(), 1)
	tween.tween_property($Sprite2D, "modulate:a", 1, 1.3)
	tween.tween_property($Sprite2D, "self_modulate:a", 1, 1.3)

func dissapear(time) -> void:
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(self, "modulate:a", 0, time*0.75)
	await tween.finished
	queue_free()
