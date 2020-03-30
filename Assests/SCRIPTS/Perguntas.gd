extends Control

var pergunta_atual
var resposta_usuario
var perguntas = [{
	"pergunta": "Como se proteger contra vírus de computador?",
	"respostas":["Utilizar um software de segurança completo e confiável!",
				 "Verificando todos os dias o sistema em busca de arquivos!",
				 "Baixando arquivos de terceiros e instalando no computador!",
				 "Deixar o sistema desatualizado!"],
	"correta": 1
}, 
{
	"pergunta": "Como o virus é passado para o sistema?",
	"respostas":["Através de arquivos pré-existentes no sistema! ",
				 "Usuário contaminado espirra no teclado do computador",
				 "Através de softwares maliciosos!",
				 "Através de atualizacões do sistema!"],
	"correta": 3
}]

onready var Pergunta   = $Container/Pergunta
onready var Resposta_1 = $Container/Resposta_1
onready var Resposta_2 = $Container/Resposta_2
onready var Resposta_3 = $Container/Resposta_3
onready var Resposta_4 = $Container/Resposta_4


func _ready():
	set_pergunta_atual()
	pass

func set_pergunta_atual():
	randomize()
	$Container/Resultado.hide()
	pergunta_atual = perguntas[randi() % perguntas.size()]
	Pergunta.text = pergunta_atual.pergunta 
	Resposta_1.text = pergunta_atual.respostas[0]
	Resposta_2.text = pergunta_atual.respostas[1]
	Resposta_3.text = pergunta_atual.respostas[2]
	Resposta_4.text = pergunta_atual.respostas[3]

	pass

func verifica_resposta(resposta_usuario):
	if(resposta_usuario == pergunta_atual.correta):
		$Container/Resultado.text = "Resposta Correta :)"
		$Container/Resultado.show()
		$FaseSeguinte.play()
		
	else:
		$Container/Resultado.text = "Resposta Incorreta :("
		$Container/Resultado.show()
		$Endgame.play()
	pass

func _on_Resposta_1_pressed():
	resposta_usuario = 1
	verifica_resposta(resposta_usuario)
	pass # Replace with function body.


func _on_Resposta_2_pressed():
	resposta_usuario = 2
	verifica_resposta(resposta_usuario)
	pass # Replace with function body.


func _on_Resposta_3_pressed():
	resposta_usuario = 3
	verifica_resposta(resposta_usuario)
	pass # Replace with function body.


func _on_Resposta_4_pressed():
	resposta_usuario = 4
	verifica_resposta(resposta_usuario)
	pass # Replace with function body.


func _on_Endgame_finished():
	get_tree().change_scene("res://Cenas/TelaGameOver.tscn") #Tela GameOver
	pass # Replace with function body.


func _on_FaseSeguinte_finished():
	get_tree().change_scene("res://Cenas/Menu.tscn") #Cena seguinte
	pass # Replace with function body.
