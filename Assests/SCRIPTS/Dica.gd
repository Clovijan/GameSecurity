tool
extends Area2D

export var width = 600 setget set_width
export var height = 300 setget set_height 
export var texto = "" setget set_text


onready var tween = get_node("Tween")

enum {IDLE, MOSTRANDO, ESCONDENDO}
var acao = IDLE 
signal mostrando 
signal mostrou
signal escondendo 
signal escondeu

func _ready():
	get_node("Balao").hide()
	pass	
		
func _draw():
	get_node("Balao").width = width
	get_node("Balao").height = height
	get_node("Balao").texto = texto
	
func set_text(val):
	texto = val
	update()
	
func set_width(val):
	width = val
	update()
	
func set_height(val):
	height = val
	update()
	


func _on_Dica_body_entered(body):
	acao = MOSTRANDO
	tween.interpolate_method(self, "resize", 0, 1, 1.0, Tween.TRANS_BOUNCE, Tween.EASE_OUT, 0)
	tween.start()
	pass # Replace with function body.
	
func _on_Dica_body_exited(body):
	acao = ESCONDENDO
	tween.interpolate_method(self, "resize", 1, 0, .5, Tween.TRANS_EXPO, Tween.EASE_OUT, 0)
	tween.start()
	pass
	
func resize(val):
	if val > .1:
		get_node("Balao").show()
	else:
		get_node("Balao").hide()
		
	get_node("Balao").width = width * val
	get_node("Balao").height = height * val


#func _on_Tween_tween_completed(object, key):
#	if acao == ESCONDENDO:
#		emit_signal("escondeu")
#	elif acao == MOSTRANDO:
#		emit_signal("mostrou")
#	acao = IDLE
#
#func _on_Tween_tween_started(object, key):
#	if acao == ESCONDENDO:
#		emit_signal("escondendo")
#	elif acao == MOSTRANDO:
#		emit_signal("mostrando")
		


