extends Node

var minigames_done=0
var lives=5
var all_games:Array[String] = [
	"res://platformer_level.tscn",
	"res://clicker_level.tscn",
]



	

func win():
	minigames_done+=1
	if minigames_done <len(all_games):
		
		waiting_screen()
	else:
		print("win")

func play_level():
		get_tree().change_scene_to_file(
			all_games[minigames_done])

func lose():
	lives-=1
	if lives>0:
		waiting_screen()
	else:
		print("lost")

func waiting_screen():
	get_tree().change_scene_to_file(
			"res://level_scene.tscn")
