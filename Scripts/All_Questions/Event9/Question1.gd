extends Question


func _ready() -> void:
	text = "Somehow you ran into each other. He seems weirdly friendly."
	answer1 = preload("res://Scripts/All_Answers/Event9/Question1/Answer1.gd").new()
	answer2 = preload("res://Scripts/All_Answers/Event9/Question1/Answer2.gd").new()
	answer3 = preload("res://Scripts/All_Answers/Event9/Question1/Answer3.gd").new()
	event_triggered = [[null], null]
