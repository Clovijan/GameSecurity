extends Control


func _ready():
	$SoundMenu.play()
	
func _on_BtnStart_pressed():
	$SoundClick.play()
	get_tree().change_scene("res://Cenas/TelaEscolhaPerson.tscn")
	
	
func _on_BtnQuit_pressed():
	$SoundClick.play()
	get_tree().quit()
