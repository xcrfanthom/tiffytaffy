extends Question


func _ready() -> void:
	text = "Herbet starts getting flirted by your ex-bestie"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question7/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question7/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question7/Answer3.gd").new()
	event_triggered = [[2], null]
	
