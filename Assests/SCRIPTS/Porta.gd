extends Area2D

func _ready():
	pass


func _on_Porta_body_entered(body):
	$PortaAbrindo.play()
	pass # Replace with function body.


func _on_PortaAbrindo_animation_finished():
	get_tree().change_scene("res://Cenas/Menu.tscn")
	pass # Replace with function body.
