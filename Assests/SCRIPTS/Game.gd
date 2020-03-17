extends Node

var lifes = 3 setget setLifes
var person = 2 setget setPerson

signal lifes_changed


func _ready():
	pass

func setLifes(val):
	lifes = val
	emit_signal("lifes_changed")
	
func setPerson(val):
	person = val
	