extends KinematicBody2D

var bullet = preload("res://Bullet-Enemy/Bullet-Enemy.tscn")


	
func _ready():
	$Area2D.connect("area_entered", self, "_colliding")
	

func _colliding(area):
	if area.is_in_group("right"):
		#print("emenies collide right")
		get_parent().global_position.x += 10
		get_parent().speed = -100
	if area.is_in_group("left"):
		#print("emenies collide left")var bulletInstancecount = 0 
		get_parent().global_position.x += 10
		get_parent().speed = 100


func _process(delta):
#	while (true):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(2.0, 30.0)
	#print("time: ",my_random_number)
	yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
		
		bulletInstance.position = Vector2(global_position.x, global_position.y+20)
		get_tree().get_root().add_child(bulletInstance)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
