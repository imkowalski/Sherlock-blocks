extends Area2D



func _on_death_body_entered(body):
	if body.name == 'player':
		get_tree().reload_current_scene()
