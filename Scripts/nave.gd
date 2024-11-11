extends KinematicBody2D
var speed = 500
func _ready():
	pass
	
	
	
func _process(delta):
	var direcao = Vector2()
#	if Input.is_action_pressed("top"):
#		direcao.y = -1
#	if Input.is_action_pressed("botton"):
#		direcao.y = 1
#	if Input.is_action_pressed("left"):
#		direcao.x = -1
#	if Input.is_action_pressed("right"):
#		direcao.x = 1

	direcao.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direcao.y = Input.get_action_strength("botton") - Input.get_action_strength("top")
	move_and_slide(direcao * speed)
	
	pass
