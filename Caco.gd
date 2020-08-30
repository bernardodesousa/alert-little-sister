extends KinematicBody2D

var velocity = Vector2(0, 0)
const GRAVITY = 30
const SPEED = 180
const JUMPFORCE = -900

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE
	
	velocity.y = velocity.y + GRAVITY
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)
