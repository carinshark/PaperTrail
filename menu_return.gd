extends Button


func _on_pressed() -> void:
	Global.lives=3
	Global.minigames_done=0
	get_tree().change_scene_to_file("res://title_screen.tscn")
