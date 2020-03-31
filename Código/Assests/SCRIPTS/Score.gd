extends CanvasLayer

func _ready():
	Game.connect("score_changed", self, "on_score_changed")
	pass


func on_score_changed():
	$Label.text = str(Game.score)