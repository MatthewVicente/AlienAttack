extends Node2D

var lives = 3
var score = 0

@onready var player = $Player
@onready var hud = $UI/HUD

func _ready():
	hud._set_score_label(0)
	hud._set_lives(lives)

func _on_death_zone_area_entered(area):
	area.die(false)

func _on_player_took_damage():
	lives -= 1
	hud._set_lives(lives)
	if lives == 0:
		player.die()

func _on_enemy_spawner_enemy_spawned(enemy_instance):
	enemy_instance.connect("enemy_died", _on_enemy_died)
	add_child(enemy_instance)

func _on_enemy_died(damaged_player: bool):
	if not damaged_player:
		score += 100
		hud._set_score_label(score)
	
