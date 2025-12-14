extends Event

func _ready() -> void:
	nameEvent = "Loop2"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event4/QuestionLast.gd").new()
	first = false
