extends Question


func _ready() -> void:
	text = "Nothing special happens"
	answer1 = preload("res://Scripts/All_Answers/Event2/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event2/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event2/FinalQuestion/Answer3.gd").new()
	event_triggered = [[1], preload("res://Scripts/All_Events/Event3.gd").new()]
	
