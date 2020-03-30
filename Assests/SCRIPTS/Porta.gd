extends Area2D

export(String) var Cena

func _ready():
	pass


func _on_Porta_body_entered(body):
	$PortaAbrindo.play()
	pass # Replace with function body.


func _on_PortaAbrindo_animation_finished():
	get_tree().change_scene(Cena)
	pass # Replace with function body.
