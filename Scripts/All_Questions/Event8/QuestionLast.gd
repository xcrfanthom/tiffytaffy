extends Question


func _ready() -> void:
	text = "You accidentally broke his legs when teleporting"
	answer1 = preload("res://Scripts/All_Answers/Event8/FinalQuestion/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event8/FinalQuestion/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event8/FinalQuestion/Answer3.gd").new()
	event_triggered = [[1,2,3], Variables.lastEvent()]
