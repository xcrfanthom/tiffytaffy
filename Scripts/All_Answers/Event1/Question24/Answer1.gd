extends Answer

func _init() -> void:
	text = "Change the two sides of the same coin"
	variableSocial = 0
	variableHeatlh = Variables.sanity - Variables.health
	variableSanity = Variables.health - Variables.sanity
