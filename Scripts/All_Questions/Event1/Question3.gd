extends Question


func _ready() -> void:
	text = "You are bored, and alone. What do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question3/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question3/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question3/Answer3.gd").new()
	event_triggered = [[1], null]
	
