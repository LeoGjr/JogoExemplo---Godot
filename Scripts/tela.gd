extends Node2D

const PRE_inimigo = preload("res://Scenes/inimigo.tscn")
var tempo = 0

func _ready():
	pass

func _process(delta):
	tempo += delta
	if tempo > 1:
		spawn()
		tempo = 0

func spawn():
	var i = PRE_inimigo.instance()
	i.position = Vector2(1030, rand_range(20, 580))
	add_child(i)
