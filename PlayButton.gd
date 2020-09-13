extends Button

func _on_PlayButton_pressed():
	get_tree().change_scene("res://level1.tscn")

func _on_CreditsButton_pressed():
	get_tree().change_scene("res://credits.tscn")
