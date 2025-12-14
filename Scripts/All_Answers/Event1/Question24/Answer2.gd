extends Answer

func _init() -> void:
	text = "Change perception and popularity"
	variableSocial = Variables.sanity - Variables.sociability
	variableHeatlh = 0
	variableSanity = Variables.sociability - Variables.sanity
