extends Control


func _ready():
	$SoundMenu.play()
	pass
	
func _on_Start_pressed():
	$SoundClick.play()
	get_tree().change_scene("res://Cenas/TelaEscolhaPerson.tscn")
	pass # Replace with function body.


func _on_Quit_pressed():
	$SoundClick.play()
	get_tree().quit()
	pass # Replace with function body.
