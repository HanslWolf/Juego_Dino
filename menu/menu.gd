extends Node2D

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Player/world_3.tscn")
	pass # Replace with function body.

func _on_salir_pressed():
	get_tree().quit()
	pass 