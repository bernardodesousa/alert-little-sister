extends StaticBody2D

onready var Player = get_tree().get_root().find_node("Caco", true, false)

func _physics_process(_delta):
	position += Vector2(2, 0)
	if Player.position.x - position.x > 600:
		position += Vector2(4, 0)
