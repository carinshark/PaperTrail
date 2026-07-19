extends Node2D

@onready var heart1=$Background/HeartContainer/Heart1
@onready var heart2=$Background/HeartContainer/Heart2
@onready var heart3=$Background/HeartContainer/Heart3
@onready var heart4=$Background/HeartContainer/Heart4
@onready var heart5=$Background/HeartContainer/Heart5

@onready var all_hearts=[heart1,heart2,heart3,heart4,heart5]

@onready var level_label=$Background/Level
@onready var timer_label=$Background/Timer

var time

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in range(len(all_hearts)):
		all_hearts[i].visible=i+1<=Global.lives
	
	timer_label.text = str(int($Timer.time_left*10)/10.0)
	
	



func _on_timer_timeout() -> void:
	Global.play_level()
