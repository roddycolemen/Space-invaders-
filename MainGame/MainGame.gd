extends Control

export(int) var countdownMax 
var currentTimer

func _ready():
	pass 
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		currentTimer = currentTimer - 1
		print(currentTimer)
