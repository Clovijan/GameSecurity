extends Control

func _ready():
	pass # Replace with function body.



func _on_BtnGirl_pressed():
	get_tree().change_scene("res://Cenas/Fase_1.tscn")
	Game.person = 1
	pass # Replace with function body.


func _on_BtnBoy_pressed():
	get_tree().change_scene("res://Cenas/Fase_1.tscn")
	Game.person = 2
	pass # Replace with function body.
