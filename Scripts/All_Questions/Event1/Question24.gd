extends Question


func _ready() -> void:
	text = "You have a vision; a change of two must happen"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question24/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question24/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question24/Answer3.gd").new()
	event_triggered = [[null], null]
