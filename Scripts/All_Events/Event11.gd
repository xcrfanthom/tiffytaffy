extends Event

func _ready() -> void:
	nameEvent = "Relationx2"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event11/QuestionLast.gd").new()
	first = false
