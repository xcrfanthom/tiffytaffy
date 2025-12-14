extends Question


func _ready() -> void:
	text = "Herbet founds a rabbit foot. Change fortune to:"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question22/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question22/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question22/Answer3.gd").new()
	event_triggered = [[null], null]
