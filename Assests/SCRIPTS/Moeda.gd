extends Area2D

func _physics_process(delta):
	$Sprite.play("Ide")

func _on_Moeda_body_entered(body):
	if body.name == "Player": 
		Game.coin -= 1
		queue_free()
	pass # Replace with function body.
