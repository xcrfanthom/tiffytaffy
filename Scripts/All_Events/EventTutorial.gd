extends Event

func _ready() -> void:
	nameEvent = "Tutorial"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/EventTutorial/Question1.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/EventTutorial/QuestionLast.gd").new()
	first = false
