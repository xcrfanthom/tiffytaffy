extends Answer

func _init() -> void:
	text = "Purple"
	var random_value = randf_range(-22,22)
	variableSocial = int(random_value)
	variableHeatlh = int(random_value)
	variableSanity = int(random_value)
