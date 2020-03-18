extends Node2D
var score = 0
var lives = 0
var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)
func save_data():
      config.set_value("Save","score",score)
      config.save(save_path)
func load_data():
      score = config.get_value("Save","score")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
