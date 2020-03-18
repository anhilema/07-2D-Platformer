extends Button


func _ready():
	pass # Replace with function body.


func _on_LoadButton_pressed():
	get_node("/root/Global").load_data()
