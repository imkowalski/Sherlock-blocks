extends Control



func _on_StartGame_pressed():
	get_tree().change_scene("res://scenes/levels/level1.tscn")


func _on_Info_pressed():
	get_tree().change_scene("res://scenes/info.tscn")


func _on_Quit_pressed():
	get_tree().quit()
