extends Event

func _ready() -> void:
	nameEvent = "Test"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/Event1/Question1.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/Event1/Question4.gd").new()
	first = false
