extends Node2D

func _physics_process(_delta):
	$Sister.position.y = $Caco.position.y
	
	if $Sister.position.x >= $Caco.position.x:
		get_tree().change_scene("res://level1.tscn")
