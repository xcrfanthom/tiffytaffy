extends Node

signal sociabilityChange(how : bool)
signal healthChange(how : bool)
signal sanityChange(how : bool)

var touched_grass = false
var poor_herbet = false
var exploded = false
var stop_ex = false

var in_game = false

var sociability = 50:
	set(value):
		if (value > sociability):
			sociabilityChange.emit(true)
		elif (value < sociability):
			sociabilityChange.emit(false)
		elif (value == sociability):
			return
		sociability = clamp(value, 0 , 100)
var health = 50:
	set(value):
		if (value > health):
			healthChange.emit(true)
		elif (value < health):
			healthChange.emit(false)
		elif (value == health):
			return
		health = clamp(value, 0 , 100)
var sanity = 50:
	set(value):
		if (value > sanity):
			sanityChange.emit(true)
		elif (value < sanity):
			sanityChange.emit(false)
		elif (value == sanity):
			return
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
		TransitionLayer.change_scene("res://Scenes/happy_chad.tscn")

func changeEvent(event:Event):
	if (event.finalQuestion!=null):
		current_past_events.append(event)

func lastEvent() -> Event:
	if (Variables.current_past_events.size()!=0):
		return Variables.current_past_events[Variables.current_past_events.size()-1]
	else:
		return preload("res://Scripts/All_Events/Event1.gd").new()

func end_game():
	end_game_bool = true

func reset():
	sociability = 50
	health = 50
	sanity = 50
	current_past_events.clear()
	end_game_bool = false
	inside_an_end = false
