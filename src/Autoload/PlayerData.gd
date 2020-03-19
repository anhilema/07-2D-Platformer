extends Node

signal updated
signal died
signal reset

var score: = 0 setget set_score
var deaths: = 0 setget set_deaths
var level = 0

var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)

func reset():
	self.score = 0
	self.deaths = 0
	emit_signal("reset")


func set_score(new_score: int) -> void:
	score = new_score
	emit_signal("updated")


func set_deaths(new_value: int) -> void:
	deaths = new_value
	emit_signal("died")
	

func save_data():
	config.set_value("Save","score",self.score)
	config.set_value("Save","deaths",self.deaths)
	config.set_value("Save","level",self.level)
	config.save(save_path)

func load_data():
	self.score = config.get_value("Save","score")
	self.deaths = config.get_value("Save","deaths")
	self.level = config.get_value("Save","level")
	if level == 1:
		get_tree().change_scene("res://src/Levels/Level01.tscn")
	if level == 2:
		get_tree().change_scene("res://src/Levels/Level02.tscn")
	set_score(score)
