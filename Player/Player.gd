extends KinematicBody2D
var movement_speed = 200 
var bulletSource = preload("res://bullet/bullet.tscn")



func _ready():
	set_process(true)
	set_physics_process(true)

func _process(delta):
	if Input. is_action_just_pressed("fire"):
	var bulletInstance = bulletSource.instance()
		bulletInstance,position = Vector2(position.x, position)
		
