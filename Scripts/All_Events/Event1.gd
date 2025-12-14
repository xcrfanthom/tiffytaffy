extends Event

func _ready() -> void:
	nameEvent = "Non"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/Event1/Question1.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question2.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question4.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question5.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question5.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question6.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question7.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question3.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question8.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/Event1/QuestionLast.gd").new()
	first = false
