extends Question


func _ready() -> void:
	text = "Herbet has installed Tinder"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question20/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question20/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question20/Answer3.gd").new()
	event_triggered = [[null], null]
