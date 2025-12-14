extends Question


func _ready() -> void:
	text = "Herbet had so much fun. He will have a happy dream."
	answer1 = preload("res://Scripts/All_Answers/Event6/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event6/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event6/FinalQuestion/Answer3.gd").new()
	event_triggered = [[3], preload("res://Scripts/All_Events/Event7.gd").new()]
	
