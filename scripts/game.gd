extends Node2D

var lives = 3
var score = 0

@onready var player = $Player
@onready var hud = $UI/HUD
@onready var ui = $UI
@onready var enemy_hit_sound = $EnemyHitSound
@onready var explode_sound = $ExplodeSound

var gos_scene = preload("res://scenes/game_over.tscn")

func _ready():
	hud._set_score_label(0)
	hud._set_lives(lives)

func _on_death_zone_area_entered(area):
	area.queue_free()

func _on_player_took_damage():
	lives -= 1
	hud._set_lives(lives)
	explode_sound.play()
	if lives == 0:
		player.die()
		
		await get_tree().create_timer(0.5).timeout
		
		var gos = gos_scene.instantiate()
		gos._set_score(score)
		ui.add_child(gos)

func _on_enemy_spawner_enemy_spawned(enemy_instance):
	enemy_instance.connect("enemy_died", _on_enemy_died)
	add_child(enemy_instance)

func _on_enemy_died(damaged_player: bool):
	if not damaged_player:
		score += 100
		hud._set_score_label(score)
	enemy_hit_sound.play()
	
