extends Area2D

func _ready():
	pass


func _process(delta):
	position.x -= 5
	if position.x < -100:
		queue_free()
