extends Control

func _ready():
	$CenterContainer/VBoxContainer/Score.text = "Score   " + str(Game.score)
	pass

	
