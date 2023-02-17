extends Control

export(int) var countdownMax 
var currentTimer

func _ready():
	pass 
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
