extends Area2D

@export var speed = 200
signal enemy_died

func _physics_process(delta: float) -> void:
	global_position.x -= speed * delta

func die():
	queue_free()
	emit_signal("enemy_died")

func _on_body_entered(body):
	body.take_damage()
	die()
