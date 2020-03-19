extends CanvasLayer

func _ready():
	Game.connect("coins_change", self, "on_coins_change")
	

func on_coins_change():
	$ContMoeda.text = str(Game.coin)
	pass