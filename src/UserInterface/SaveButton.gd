extends Button


func _ready():
	pass




func _on_SaveButton_pressed():
	get_node("/root/Global").save_data()
