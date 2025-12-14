extends Question


func _ready() -> void:
	text = "Herbet is focused on work. He looks so cute. You do spell to:"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question2/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question2/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question2/Answer3.gd").new()
	event_triggered = [[null], null]
	
