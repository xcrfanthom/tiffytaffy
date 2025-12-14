extends Question


func _ready() -> void:
	text = "Herpet is doing laundry"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question18/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question18/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question18/Answer3.gd").new()
	event_triggered = [[null], null]
