extends CanvasLayer

@onready var anim = $AnimationPlayer

func change_scene(target : String):
	$AnimationPlayer.play("fade")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play_backwards("fade")
	
#func fade_in():
	#anim.play("fade")
#
#func fade_out():
	#anim.play_backwards("fade")
