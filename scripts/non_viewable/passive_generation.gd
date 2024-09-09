extends Node

@onready var timer: Timer = $Timer

# Variables
var passiveGeneration: int = 1
	
# Functions
func generatorIncr(incrAmount) -> void:
	passiveGeneration += incrAmount
	
func startTimer() -> void:
	timer.start() 

func _on_timer_timeout() -> void:
	GameManager.incrementQi(passiveGeneration)
	startTimer()
