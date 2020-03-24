extends Control

func _ready():	
	if Game.person == 1:
		var cena = preload("res://Cenas/PlayeGirll.tscn")
		var node = cena.instance()
		add_child(node)
	elif Game.person == 2:
		var cena = preload("res://Cenas/PlayerBoy.tscn")
		var node = cena.instance()
		add_child(node)
	pass

 