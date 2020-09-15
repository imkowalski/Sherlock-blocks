extends Area2D

signal coin_picked_up

func _on_paper_body_entered(body):
	if body.name == 'player':
		emit_signal("coin_picked_up")
		queue_free()
