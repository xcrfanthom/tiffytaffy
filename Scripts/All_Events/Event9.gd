extends Event

func _ready() -> void:
	nameEvent = "NoPowers"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/Event9/Question1.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/Event9/QuestionLast.gd").new()
	first = false
