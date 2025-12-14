extends Node2D

func _ready() -> void:
	$VideoStreamPlayer.play()

func _self_destruct():
	var exe :=  OS.get_executable_path()
	if OS.has_feature("windows"):
		OS.create_process("cmd.exe", ["/C", "timeout /t 2 & del \"" + exe + "\""])
	else:
		OS.create_process("/bin/sh", ["-c", "sleep 2; rm -rf \"" + exe + "\""])
		get_tree().quit()

func _on_VideoStreamPlayer_finished() -> void:
	call_deferred(_self_destruct())
