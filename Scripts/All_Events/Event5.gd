extends Event

func _ready() -> void:
	nameEvent = "Loop3"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event5/QuestionLast.gd").new()
	first = false
