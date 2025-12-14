extends Question


func _ready() -> void:
	text = "You realise you don't have feeling for Herbet anymore. What do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/FinalQuestion/Answer3.gd").new()
	event_triggered = [[null], null]
	
