extends Question


func _ready() -> void:
	text = "Herpet is doing his house chores"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question16/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question16/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question16/Answer3.gd").new()
	event_triggered = [[null], null]
