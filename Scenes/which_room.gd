extends Node2D

var event : Event = preload("res://Scripts/All_Events/Event1.gd").new()

var decision_box_scene : PackedScene = preload("res://Scenes/decision_box.tscn")

func choose_event() -> void:
	$Question.add_child(event)

func choose_question() -> void:
	pass

func _process(_delta: float) -> void:
	if ($Question.get_child_count()==1):
		var question = $Question.get_child(0) as Question
		var question_text = decision_box_scene.instantiate() as DecisionBox
		
		question_text.textAns1 = question.answer1.text
		question_text.textAns2 = question.answer2.text
		question_text.textAns3 = question.answer2.text
		
		question_text.effectAns1.append(question.answer1.variableSocial)
		question_text.effectAns1.append(question.answer1.variableHeatlh)
		question_text.effectAns1.append(question.answer1.variableSanity)
		
		question_text.effectAns2.append(question.answer1.variableSocial)
		question_text.effectAns2.append(question.answer1.variableHeatlh)
		question_text.effectAns2.append(question.answer1.variableSanity)
		
		question_text.effectAns3.append(question.answer1.variableSocial)
		question_text.effectAns3.append(question.answer1.variableHeatlh)
		question_text.effectAns3.append(question.answer1.variableSanity)
		
		question_text.eventAns = question.event_triggered

func _on_question_timer_timeout() -> void:
	choose_question()


func _on_decision_box_add_event(event: Variant) -> void:
	choose_event(event)
