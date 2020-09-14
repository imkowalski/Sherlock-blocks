extends Area2D





func _on_from1_body_entered(body):
	if body.name == 'player':
		get_tree().change_scene("res://scenes/levels/level2.tscn")
