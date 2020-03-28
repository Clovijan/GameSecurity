extends Node

func _ready():
	$LabelPause/Label.visible = false
	pass

func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		if get_tree().paused == false :
			get_tree().paused = true
			$LabelPause/Label.visible = true
		else:
			get_tree().paused = false
			$LabelPause/Label.visible = false
