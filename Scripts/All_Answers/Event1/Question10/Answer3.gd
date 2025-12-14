extends Answer

func _init() -> void:
	text = "Blue"
	var random_chooser = randf_range(0.00,1.00)
	var number_change
	if(random_chooser==0.69):
		number_change = 100
	elif (random_chooser < 0.2):
		number_change = -40
	elif(0.2<=random_chooser and random_chooser <0.5):
		number_change = -20
	elif(0.5<=random_chooser and random_chooser <0.8):
		number_change = 20
	else:
		number_change = 40
	variableSocial = number_change
	variableHeatlh = number_change
	variableSanity = number_change
