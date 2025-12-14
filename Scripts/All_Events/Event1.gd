extends Event

func _ready() -> void:
	nameEvent = "Non"
	addQuestions()

func addQuestions() -> void:
	questions.append(preload("res://Scripts/All_Questions/Event1/Question1.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question2.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question3.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question4.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question5.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question6.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question7.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question8.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question9.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question10.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question11.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question12.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question13.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question14.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question15.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question16.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question17.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question18.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question19.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question20.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question21.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question22.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question23.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question24.gd").new())
	questions.append(preload("res://Scripts/All_Questions/Event1/Question25.gd").new())
	finalQuestion = preload("res://Scripts/All_Questions/Event1/QuestionLast.gd").new()
	first = false
