extends CanvasLayer

func _ready():
	Game.connect("coins_changed", self, "on_coins_changed")
	

func on_coins_changed():
	$ContMoeda.text = str(Game.coin)
	pass