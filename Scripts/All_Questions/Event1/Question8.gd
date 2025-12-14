extends Question


func _ready() -> void:
	text = "Herbet said that he still loved you while asleep. How do you react?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question8/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question8/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question8/Answer3.gd").new()
	event_triggered = [[null], null]
