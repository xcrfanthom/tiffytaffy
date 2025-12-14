extends Answer

func _init() -> void:
	text = "Equilibrate human physique"
	variableSocial = 50-Variables.sociability
	variableHeatlh = -(50-Variables.sociability) - (50-Variables.sanity)
	variableSanity = 50-Variables.sanity
