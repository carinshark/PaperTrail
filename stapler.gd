extends Area2D
signal collected

@export var player:CharacterBody2D




func _on_body_entered(body: Node2D) -> void:
	if body==player:
		collected.emit()
		queue_free()
