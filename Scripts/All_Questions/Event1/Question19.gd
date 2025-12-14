extends Question


func _ready() -> void:
	text = "Herbet decides to play a videogame today, which one?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question19/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question19/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question19/Answer3.gd").new()
	event_triggered = [[1], preload("res://Scripts/All_Events/Event10.gd").new()]
