extends Question


func _ready() -> void:
	text = "Herbet feel's like doing exercise. What do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question5/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question5/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question5/Answer3.gd").new()
	event_triggered = [[null], null]
	
