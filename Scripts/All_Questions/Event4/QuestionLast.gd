extends Question


func _ready() -> void:
	text = "Seriously, nothing happens"
	answer1 = preload("res://Scripts/All_Answers/Event4/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event4/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event4/FinalQuestion/Answer3.gd").new()
	event_triggered = [[1], preload("res://Scripts/All_Events/Event5.gd").new()]
	
