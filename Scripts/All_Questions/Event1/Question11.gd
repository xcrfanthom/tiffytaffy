extends Question


func _ready() -> void:
	text = "You play with his voodoo doll. What do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question11/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question11/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question11/Answer3.gd").new()
	event_triggered = [[null], null]
