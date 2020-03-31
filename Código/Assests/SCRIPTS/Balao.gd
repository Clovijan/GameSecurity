tool

extends Node2D

export var width = 600 setget set_width
export var height = 300 setget set_height
export var texto = "" setget set_text
export var size = 25 setget set_fontSize

func _ready():
	pass

func _draw():
	get_node("Frame").set_size(Vector2(width,height))
	get_node("Frame").set_position(Vector2(-width/2, -height/2))
	
	get_node("Mensagem").set_size(Vector2(width-40,height-40))
	get_node("Mensagem").set_position(Vector2(-width/2+20, -height/2+20))
	get_node("Mensagem").text = texto

func set_fontSize(val):
	size = val
	
func set_width(val):
	width = val
	update()
	
func set_height(val):
	height = val
	update()

func set_text(val):
	texto = val
	update()
	