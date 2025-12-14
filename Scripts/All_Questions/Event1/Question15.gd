extends Question


func _ready() -> void:
	text = "Your powers don't work today, what do you do?"
	answer1 = preload("res://Scripts/All_Answers/Event1/Question15/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event1/Question15/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event1/Question15/Answer3.gd").new()
	event_triggered = [[1], preload("res://Scripts/All_Events/Event9.gd").new()]
