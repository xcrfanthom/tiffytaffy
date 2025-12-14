extends Question


func _ready() -> void:
	text = "Herbet wanna watch a movie. Which movie will he watch?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question6/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question6/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question6/Answer3.gd").new()
	event_triggered = [[2], preload("res://Scripts/All_Events/Event6.gd").new()]
