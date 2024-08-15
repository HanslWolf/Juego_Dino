extends Camera2D

func _ready():
	top_level = true
	
func _process(delta):
	global_position.x = get_parent().global_position.x
