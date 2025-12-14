extends Question


func _ready() -> void:
	text = "You feel sad for Herbet at this point. What do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question4/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question4/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question4/Answer3.gd").new()
	event_triggered = [[null], null]
	
