extends Question


func _ready() -> void:
	text = "Herbet is so busy that he forgot to shower. What do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question9/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question9/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question9/Answer3.gd").new()
	event_triggered = [[null], null]
