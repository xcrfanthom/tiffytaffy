extends Answer

func _init() -> void:
	text = "Equilibrate well-being"
	variableSocial = -(50-Variables.health) - (50-Variables.sanity)
	variableHeatlh = 50-Variables.health
	variableSanity = 50-Variables.sanity
