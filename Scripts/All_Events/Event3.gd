extends Event

func _ready() -> void:
	nameEvent = "Loop1"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event3/QuestionLast.gd").new()
	first = false
