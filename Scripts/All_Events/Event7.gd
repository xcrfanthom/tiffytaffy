extends Event

func _ready() -> void:
	nameEvent = "Dream"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/Event7/Question1.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event7/Question2.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/Event7/QuestionLast.gd").new()
	first = false
