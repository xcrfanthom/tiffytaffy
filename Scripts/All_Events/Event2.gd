extends Event

func _ready() -> void:
	nameEvent = "Loop0"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event2/QuestionLast.gd").new()
	first = false
