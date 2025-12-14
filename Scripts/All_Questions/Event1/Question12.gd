extends Question


func _ready() -> void:
	text = "He leaves you a 3am typical message"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question12/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question12/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question12/Answer3.gd").new()
	event_triggered = [[3], null]
