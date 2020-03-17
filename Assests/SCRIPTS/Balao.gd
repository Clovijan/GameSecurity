tool

extends Node2D

export var width = 50 setget set_width
export var height = 50 setget set_height 

func _ready():
	pass

func _draw():
	get_node("Frame").set_size(Vector2(width,height))
	get_node("Frame").set_position(Vector2(-width/2, -height/2))

func set_width(val):
	width = val
	update()
	
func set_height(val):
	height = val
	update()
	