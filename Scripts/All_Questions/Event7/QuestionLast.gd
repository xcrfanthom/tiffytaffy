extends Question


func _ready() -> void:
	text = "In his dreams he is surrounded by naked men"
	answer1 = preload("res://Scripts/All_Answers/Event7/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event7/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event7/FinalQuestion/Answer3.gd").new()
	event_triggered = [[1,2,3], Variables.lastEvent()]
