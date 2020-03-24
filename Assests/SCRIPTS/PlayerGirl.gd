extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 300
const JUMP_FORCE = -550
var motion = Vector2()

func _ready():
	Game.connect("lifes_changed", self, "on_lifes_change")
	pass

func _physics_process(delta):
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$Sprite.play("Run") # dar o play na animação
		$Sprite.flip_h = false
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$Sprite.play("Run")
		$Sprite.flip_h = true
		
	else: 
		motion.x = 0
		$Sprite.play("Ide")
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_FORCE
	else:
		$Sprite.play("Jump") 
	
	motion = move_and_slide(motion, UP)

func _on_Pes_body_entered(body):
	body.dano()
	motion.y = JUMP_FORCE

func on_lifes_change():
	update()
	pass

func _on_Dano_body_entered(body):
	Game.lifes -= 1
	print(Game.lifes)
	if Game.lifes == 0:
		$".".queue_free()