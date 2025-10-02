extends Control

@onready var score = $Score
@onready var livesLeft = $LivesLeft

func _set_score_label(newScore):
	score.text = "Score: "+str(newScore)

func _set_lives(amount):
	livesLeft.text = str(amount)
