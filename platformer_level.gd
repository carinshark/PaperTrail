extends Node2D

var staplers_collected=0

func _on_stapler_collected() -> void:
	staplers_collected+=1
	if staplers_collected>=3:
		Global.win()
	

func _on_minigame_timer_time_ran_out() -> void:
	Global.lose()
