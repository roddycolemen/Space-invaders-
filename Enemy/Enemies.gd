extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = -140
# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true) 
	
	
func _physics_process(delta):
	global_position.x += speed * delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
