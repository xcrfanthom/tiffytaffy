extends Question


func _ready() -> void:
	text = "It's christmas! How would you celebrate"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question25/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question25/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question25/Answer3.gd").new()
	event_triggered = [[null], null]
