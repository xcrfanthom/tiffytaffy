extends Event

func _ready() -> void:
	nameEvent = "NoPowers"
	addQuestions()

func addQuestions() -> void:
	finalQuestion = preload("res://Scripts/All_Questions/Event10/QuestionLast.gd").new()
	first = false
