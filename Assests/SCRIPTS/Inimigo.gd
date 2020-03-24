extends StaticBody2D

var flip = true 
var posicao_inicial
var posicao_final
var velocidade = 1
var distancia = 200

export(int) var comprimento = 200

func _ready():
	$Sprite.play("Ide")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + comprimento
	
func _process(delta):
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x += velocidade
		$Sprite.flip_h = false
		if($".".position.x >= posicao_final):
			flip = false
	
	if($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		$Sprite.flip_h = true
		if($".".position.x <= posicao_inicial):
			flip = true

func dano():
	get_node("Anime").play("Die")
	
func die():
	$".".queue_free()