extends Control

func _ready():
	$SoundMusic.play()
	pass # Replace with function body.

func _on_BtnGirl2_pressed():
	$SoundClick.play()
	Game.person = 1
	get_tree().change_scene("res://Cenas/Fase_1.tscn")
	pass # Replace with function body.


func _on_BtnBoy2_pressed():
	$SoundClick.play()
	Game.person = 2
	get_tree().change_scene("res://Cenas/Fase_1.tscn")
	pass # Replace with function body.
