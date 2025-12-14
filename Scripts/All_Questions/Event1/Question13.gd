extends Question


func _ready() -> void:
	text = "Herpet gets invited to a party"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question13/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question13/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question13/Answer3.gd").new()
	event_triggered = [[null], null]
