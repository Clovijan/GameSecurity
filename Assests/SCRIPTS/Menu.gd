extends Control


func _on_BtnStart_pressed():
	get_tree().change_scene("res://Cenas/Fase_1.tscn")


func _on_BtnQuit_pressed():
	get_tree().quit()
