extends KinematicBody2D

var velocity = Vector2(0, 0)
const GRAVITY = 30
const SPEED = 200
const JUMPFORCE = -1050

func _physics_process(_delta):
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
		$Sprite.play("walk")
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED
		$Sprite.play("walk")
	else:
		$Sprite.play("iddle")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE

	if not is_on_floor():
		$Sprite.play("air")
	
	velocity.y = velocity.y + GRAVITY
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.1)

func _on_fallzone_body_entered(_body):
	get_tree().change_scene("res://intro.tscn")

func _on_exitZone_body_entered(body):
	if body.name == "Caco":
		get_tree().change_scene("res://credits.tscn")

func _on_exitArea_body_entered(body):
	if body.name == "Caco":
		get_tree().change_scene("res://level2.tscn")
