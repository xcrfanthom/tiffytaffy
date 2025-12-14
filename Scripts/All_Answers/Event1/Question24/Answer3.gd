extends Answer

func _init() -> void:
	text = "Change the strengh of self and links"
	variableSocial = Variables.health - Variables.sociability
	variableHeatlh = Variables.sociability - Variables.health
	variableSanity = 0
