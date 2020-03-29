extends StaticBody2D

var flip = true
var posicao_inicial
var posicao_final
var velocidade = 0.6

func _ready():
	$Sprite.play("move")
	posicao_inicial = $".".position.x
	posicao_final = posicao_inicial + 100

# warning-ignore:unused_argument
func _process(_delta):
	if(posicao_inicial <= posicao_final and flip):
		$".".position.x += velocidade
		#$Sprite.flip_h = false
		if ($".".position.x >= posicao_final):
			flip = false
	
	if($".".position.x >= posicao_inicial and !flip):
		$".".position.x -= velocidade
		#$Sprite.flip_h = true
		if ($".".position.x <= posicao_inicial):
			flip = true
			
func dano():
	Game.score += 10
	$".".queue_free()

	

