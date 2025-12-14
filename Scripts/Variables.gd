extends Node

var sociability = 50:
	set(value):
		sociability = clamp(value, 0 , 100)
var health = 50:
	set(value):
		health = clamp(value, 0 , 100)
var sanity = 50:
	set(value):
		sanity = clamp(value, 0 , 100)
var current_past_events : Array[Event]
var end_game_bool : bool = false
var inside_an_end : bool = false

func _process(_delta: float) -> void:
	if (end_game_bool or inside_an_end):
		return
	if (sociability==0 or health==0 or sanity ==0):
		inside_an_end = true
		TransitionLayer.change_scene("res://Scenes/dead_of_chad.tscn")
	elif (sociability==100 or health==100 or sanity==100):
		inside_an_end = true
		TransitionLayer.change_scene("placeholder")

func changeEvent(event:Event):
	if (event.finalQuestion!=null):
		current_past_events.append(event)

func lastEvent() -> Event:
	return Variables.current_past_events[Variables.current_past_events.size()-1]

func end_game():
	end_game_bool = true
