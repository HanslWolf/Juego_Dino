extends Area2D

func _on_body_entered(body):
	if body is player:
		$Sprite2D.set_animation("coin")
		$AudioStreamPlayer2D.play()

func _on_audio_stream_player_2d_finished():
	queue_free()
