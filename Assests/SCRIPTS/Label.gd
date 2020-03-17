extends Label

func _ready():
	pass
	hide()
	get_parent().connect("mostrou", self, "on_mostrou")
	get_parent().connect("escondendo", self, "on_escondendo")

func on_mostrou():
	hide()
	show() 
	
func on_escondendo():
	hide() 