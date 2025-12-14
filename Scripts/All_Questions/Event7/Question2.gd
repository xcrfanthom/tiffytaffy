extends Question


func _ready() -> void:
	text = "Seems like he will wake up"
	answer1 = preload("res://Scripts/All_Answers/Event7/Question2/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event7/Question2/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event7/Question2/Answer3.gd").new()
	event_triggered = [[null], null]
