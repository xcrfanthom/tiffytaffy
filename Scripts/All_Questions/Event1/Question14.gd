extends Question


func _ready() -> void:
	text = "A friend asks Herbet to join a game jam"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question14/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question14/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question14/Answer3.gd").new()
	event_triggered = [[null], null]
