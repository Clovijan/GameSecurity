extends Control


func _on_BtnStart_pressed():
	get_tree().change_scene("res://Cenas/TelaEscolhaPerson.tscn")
	


func _on_BtnQuit_pressed():
	get_tree().quit()
