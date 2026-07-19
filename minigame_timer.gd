extends Node2D

@export var time_left:float=10

signal time_ran_out

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start(time_left)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$RichTextLabel.text= str(int($Timer.time_left*10)/10.0)


func _on_timer_timeout() -> void:
	time_ran_out.emit()
