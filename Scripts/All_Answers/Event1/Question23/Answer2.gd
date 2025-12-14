extends Answer

func _init() -> void:
	text = "Equilibrate the outside looks"
	variableSocial = 50-Variables.sociability
	variableHeatlh = 50-Variables.health
	variableSanity = -(50-Variables.health) - (50-Variables.sociability)
