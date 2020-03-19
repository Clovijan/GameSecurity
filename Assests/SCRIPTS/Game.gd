extends Node

var lifes = 3 setget setLifes
var person = 1 setget setPerson
var coin = 10 setget setCoin

signal lifes_changed
signal coins_change


func _ready():
	pass

func setLifes(val):
	lifes = val
	emit_signal("lifes_changed")
	
func setPerson(val):
	person = val
	
func setCoin(val):
	coin = val
	emit_signal("coins_change")
	