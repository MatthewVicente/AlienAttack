extends Node2D

@onready var timer = $Timer

func _ready() -> void:
	timer.connect("timeout", _on_timer_timeout)
	
func _on_timer_timeout():
	print("timeout")
