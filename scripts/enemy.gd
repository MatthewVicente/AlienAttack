extends Area2D

@export var speed = 200
signal enemy_died(damaged_player: bool)

func _physics_process(delta: float) -> void:
	global_position.x -= speed * delta

func die(damaged_player: bool = false):
	queue_free()
	emit_signal("enemy_died", damaged_player)

func _on_body_entered(body):
	body.take_damage()
	die(true)
