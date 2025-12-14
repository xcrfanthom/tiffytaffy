extends Question


func _ready() -> void:
	text = "You're super powerfull arch-enemy attacks Herbet"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question21/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question21/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question21/Answer3.gd").new()
	event_triggered = [[null], null]
