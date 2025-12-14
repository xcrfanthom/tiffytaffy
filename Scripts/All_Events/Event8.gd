extends Event

func _ready() -> void:
	nameEvent = "Tp"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event8/QuestionLast.gd").new()
	first = false
