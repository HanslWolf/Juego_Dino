extends CharacterBody2D


var speed := 100
var direccion := 0.0 
var jump := 190
const gravity := 9
@onready var anim :=$AnimationPlayer
@onready var sprite := $Sprite2D
var attack: bool=false


func _physics_process(delta):
	direccion = Input.get_axis("ui_left" , "ui_right")
	velocity.x = direccion * speed
	if !attack:
	
		if direccion != 0 :
			anim.play("Run")
		else :
			anim.play("Parada")
			
		sprite.flip_h = direccion < 0 
		
		if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
			velocity.y -= jump
		velocity.y += gravity
		
		if Input.is_action_just_pressed("attack"):
			attack=true
		move_and_slide()
	else:
		$AnimationPlayer.play("attack")
		await ($AnimationPlayer.animation_finished)
		attack = false

	
	
