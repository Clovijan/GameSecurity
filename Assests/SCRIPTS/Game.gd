extends Node

var lifes = 3 setget setLifes
var person = 2 setget setPerson
var coin = 0 setget setCoin
var score = 0 setget setScore

signal lifes_changed
signal coins_changed
signal score_changed


func _ready():
	pass

func setLifes(val):
	lifes = val
	emit_signal("lifes_changed")

func setScore(val):
	score = val
	emit_signal("score_changed")
	
func setPerson(val):
	person = val
	
func setCoin(val):
	coin = val
	emit_signal("coins_changed")
	
