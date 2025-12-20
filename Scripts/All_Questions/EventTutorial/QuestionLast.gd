extends Question


func _ready() -> void:
	text = "Try to keep them between 0-100 or you loose!"
	answer1 = preload("res://Scripts/All_Answers/EventTutorial/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/EventTutorial/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/EventTutorial/FinalQuestion/Answer3.gd").new()
	event_triggered = [[null], null]
