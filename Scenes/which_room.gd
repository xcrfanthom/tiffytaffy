extends Node2D

var decision_box_scene : PackedScene = preload("res://Scenes/decision_box.tscn")
var textOfQuestion_scene : PackedScene = preload("res://Scenes/text_of_question.tscn")

var currentEvent : Event = null
const all_animation := ["moveWitch1","moveWitch2","moveWitch3","moveWitch4","moveWitch5"]

var combust : bool = false

const timeOfColorChange = 0.5

func _ready() -> void:
	if FileAccess.file_exists("user://save_state.save"):
		var file = FileAccess.open("user://save_state.save", FileAccess.READ)
		if file:
			var marker = file.get_as_text()
			file.close()
			if marker == "when_things_go_boom":
				TransitionLayer.change_scene("res://Scenes/kaboom.tscn")
	choose_event(preload("res://Scripts/All_Events/Event1.gd").new())
	choose_question()
	
	Variables.connect("sociabilityChange", changeOnSocia)
	Variables.connect("healthChange", changeOnHealth)
	Variables.connect("sanityChange", changeOnSanity)

func changeOnSocia(how : bool):
	var tween = create_tween()
	if (how==true):
		tween.tween_property($Sprite2D/SociabilityVar, "self_modulate", Color(0.298, 0.745, 0.2),timeOfColorChange)
	else:
		tween.tween_property($Sprite2D/SociabilityVar, "self_modulate", Color(0.875, 0.122, 0.031),timeOfColorChange)
	tween.tween_property($Sprite2D/SociabilityVar, "self_modulate", Color(1.0, 1.0, 1.0),timeOfColorChange*0.75)

func changeOnHealth(how : bool):
	var tween = create_tween()
	if (how==true):
		tween.tween_property($Sprite2D/HeatlhVar, "self_modulate", Color(0.298, 0.745, 0.2),timeOfColorChange)
	else:
		tween.tween_property($Sprite2D/HeatlhVar, "self_modulate", Color(0.875, 0.122, 0.031),timeOfColorChange)
	tween.tween_property($Sprite2D/HeatlhVar, "self_modulate", Color(1.0, 1.0, 1.0),timeOfColorChange*0.75)

func changeOnSanity(how : bool):
	var tween = create_tween()
	if (how==true):
		tween.tween_property($Sprite2D/SanityVar, "self_modulate", Color(0.188, 0.933, 0.204),timeOfColorChange)
	else:
		tween.tween_property($Sprite2D/SanityVar, "self_modulate", Color(1.0, 0.0, 0.0),timeOfColorChange)
	tween.tween_property($Sprite2D/SanityVar, "self_modulate", Color(1.0, 1.0, 1.0),timeOfColorChange*0.75)

func choose_event(event) -> void:
	if (currentEvent!=null):
		Variables.changeEvent(currentEvent)
	currentEvent = event
	if (currentEvent.first == true):
		currentEvent.addQuestions()

func choose_question() -> void:
	if (currentEvent.questions.size()>0):
		var question = currentEvent.questions[randi() % currentEvent.questions.size()]
		$Question.add_child(question)
		currentEvent.questions.erase(question)
	else:
		var question = currentEvent.finalQuestion
		$Question.add_child(question)
		currentEvent.finalQuestion = null

func _process(_delta: float) -> void:
	checkSociability()
	checkSanity()
	checkHeatlh()
	animationPlay()
	if (Variables.end_game_bool):
		randomlyCombust()
	if ($Question.get_child_count()==1):
		var question = $Question.get_child(0) as Question
		var question_text = decision_box_scene.instantiate() as DecisionBox
		var question_main_text = textOfQuestion_scene.instantiate() as TextOfQuestion
		
		question_main_text.textOfLabel = question.text
		question_main_text.position = Vector2(-3800.0, -8750.0)
		
		question_text.textAns1 = question.answer1.text
		question_text.textAns2 = question.answer2.text
		question_text.textAns3 = question.answer3.text
		
		question_text.effectAns1.append(question.answer1.variableSocial)
		question_text.effectAns1.append(question.answer1.variableHeatlh)
		question_text.effectAns1.append(question.answer1.variableSanity)
		
		question_text.effectAns2.append(question.answer2.variableSocial)
		question_text.effectAns2.append(question.answer2.variableHeatlh)
		question_text.effectAns2.append(question.answer2.variableSanity)
		
		question_text.effectAns3.append(question.answer3.variableSocial)
		question_text.effectAns3.append(question.answer3.variableHeatlh)
		question_text.effectAns3.append(question.answer3.variableSanity)
		
		if ("final" in question.answer1):
			question_text.end_game = true
		if("last" in question.answer1):
			question_text.lastQuestionOfEvent = true
		
		question_text.eventAns = question.event_triggered
		
		add_child(question_text)
		add_child(question_main_text)
		
		question_text.connect("addEvent", add_event)
		question_text.connect("deleteText",deleteText)
		
		question.queue_free()

func _on_question_timer_timeout() -> void:
	$QuestionTimer.wait_time = randf_range(3, 5)
	choose_question()

func randomlyCombust():
	$Sprite2D/AnimatedSprite2D.visible = true
	combust = true
	$Sprite2D/Witch.queue_free()
	$AnimationPlayer.stop()
	Music.stop()
	$AudioStreamPlayerWalk.stop()
	$AudioStreamPlayerTp.stop()
	$AudioStreamPlayer2.play()
	$AudioStreamPlayer.play()
	$Sprite2D/AnimatedSprite2D.play("explosion")
	await $Sprite2D/AnimatedSprite2D.animation_finished
	TransitionLayer.change_scene("res://Scenes/credits.tscn")

func add_event(event: Variant) -> void:
	choose_event(event)

func deleteText(speed) -> void:
	$TextOfQuestion.dissapear(speed)

func checkSociability():
	if (Variables.sociability==100):
		$Sprite2D/SociabilityVar.play("Full")
	elif(100>Variables.sociability and Variables.sociability>=74):
		$Sprite2D/SociabilityVar.play("AlmostFull")
	elif(74>Variables.sociability and Variables.sociability>=48):
		$Sprite2D/SociabilityVar.play("KindaFull")
	elif(48>Variables.sociability and Variables.sociability>=23):
		$Sprite2D/SociabilityVar.play("KindaEmpty")
	elif(23>Variables.sociability and Variables.sociability>0):
		$Sprite2D/SociabilityVar.play("AlmostEmpty")
	elif(Variables.sociability==0):
		$Sprite2D/SociabilityVar.play("Empty")

func checkSanity():
	if (Variables.sanity==100):
		$Sprite2D/SanityVar.play("Full")
	elif(100>Variables.sanity and Variables.sanity>=74):
		$Sprite2D/SanityVar.play("AlmostFull")
	elif(74>Variables.sanity and Variables.sanity>=48):
		$Sprite2D/SanityVar.play("KindaFull")
	elif(48>Variables.sanity and Variables.sanity>=23):
		$Sprite2D/SanityVar.play("KindaEmpty")
	elif(23>Variables.sanity and Variables.sanity>0):
		$Sprite2D/SanityVar.play("AlmostEmtpy")
	elif(Variables.sanity==0):
		$Sprite2D/SanityVar.play("Empty")

func checkHeatlh():
	if (Variables.health==100):
		$Sprite2D/HeatlhVar.play("Full")
	elif(100>Variables.health and Variables.health>=74):
		$Sprite2D/HeatlhVar.play("AlmostFull")
	elif(74>Variables.health and Variables.health>=48):
		$Sprite2D/HeatlhVar.play("KindaFull")
	elif(48>Variables.health and Variables.health>=23):
		$Sprite2D/HeatlhVar.play("KindaEmpty")
	elif(23>Variables.health and Variables.health>0):
		$Sprite2D/HeatlhVar.play("AlmostEmpty")
	elif(Variables.health==0):
		$Sprite2D/HeatlhVar.play("Empty")

func animationPlay():
	if (!$AnimationPlayer.is_playing() and !combust):
		var animation_to_do = all_animation[randi() % all_animation.size()]
		var backwards = randf_range(0,1)
		if (backwards<0.02):
			$AnimationPlayer.play_backwards(animation_to_do)
		else:
			$AnimationPlayer.play(animation_to_do)
