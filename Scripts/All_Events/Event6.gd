extends Event

func _ready() -> void:
	nameEvent = "Cinema"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/Event6/Question1.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/Event6/QuestionLast.gd").new()
	first = false
