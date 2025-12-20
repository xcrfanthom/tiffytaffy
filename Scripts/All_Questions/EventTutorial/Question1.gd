extends Question


func _ready() -> void:
	text = "Click to increase one value"
	answer1 = preload("res://Scripts/All_Answers/EventTutorial/Question1/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/EventTutorial/Question1/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/EventTutorial/Question1/Answer3.gd").new()
	event_triggered = [[null], null]
