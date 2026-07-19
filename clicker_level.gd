extends Node2D

var staplers_clicked=0

func _on_clickable_stapler_clicked() -> void:
	staplers_clicked+=1
	if staplers_clicked>=8:
		Global.win()


func _on_minigame_timer_time_ran_out() -> void:
	Global.lose()
