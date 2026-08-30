extends Label

func _ready() -> void:
	connect("mouse_entered", mouseEntered)

func mouseEntered() -> void:
	if $"../arrow".position.y != position.y:
		$"../select".play()
	$"../arrow".position.y = position.y
