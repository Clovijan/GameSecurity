extends Area2D

func _physics_process(delta):
	$Sprite.play("Ide")

func _on_Moeda_body_entered(body):
	if body.name == "Player":
		$SoundCoin.play()
		Game.coin += 1
		Game.score += 20
	pass # Replace with function body.


func _on_SoundCoin_finished():
	queue_free()
	pass # Replace with function body.
