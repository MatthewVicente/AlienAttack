extends Node2D

var enemy_scene = preload("res://scenes/enemy.tscn")

@onready var spawn_positions = $SpawnPositions

func _on_timer_timeout():
	spawn_enemy()
	
func spawn_enemy():
	var spawn_positions_arr = spawn_positions.get_children()
	var rand_spawn_position = spawn_positions_arr.pick_random()
	
	var enemy_instance = enemy_scene.instantiate()
	enemy_instance.global_position = rand_spawn_position.global_position
	add_child(enemy_instance)
