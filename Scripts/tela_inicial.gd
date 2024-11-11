extends Node2D

func _ready():
	pass


func _process(delta):
	if Input.is_action_just_pressed("press"):
		get_tree().change_scene("res://Scenes/tela.tscn")
