extends Control

func _ready():
	$CenterContainer/VBoxContainer/Score.text = "Score   " + str(Game.score)
	pass

	

func _on_TouchScreenButton3_pressed():
	$Click.play()
	get_tree().change_scene("res://Cenas/Menu.tscn")
	Game.lifes = 3
	Game.coin = 0
	Game.score = 0
	pass # Replace with function body.


func _on_BtnPlay_pressed():
	$Click.play()
	get_tree().change_scene("res://Cenas/Fase_1.tscn")
	Game.lifes = 3
	Game.coin = 0
	Game.score = 0
		
	pass # Replace with function body.
