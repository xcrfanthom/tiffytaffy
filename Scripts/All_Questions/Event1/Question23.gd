extends Question


func _ready() -> void:
	text = "You have a vision; addition causes equilibrium"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question23/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question23/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question23/Answer3.gd").new()
	event_triggered = [[null], null]
