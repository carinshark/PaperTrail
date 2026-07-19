extends Area2D

signal clicked




func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		clicked.emit()
		queue_free()
