extends Control

# Exports
@onready var qiLabel: Label = $"Stats/Total Qi"
@onready var passiveLabel: Label = $Stats/Passive

# Variables
var passiveGen = PassiveGeneration.passiveGeneration

# Events
func _on_button_pressed() -> void:
	GameManager.incrementQi(GameManager.qiIncr)

func _ready() -> void:
	updateQiLabel(GameManager.qiAmount)
	PassiveGeneration.startTimer()
	passiveLabel.text = "Passive Generation: %s" %passiveGen

func _process(delta: float) -> void:
	updateQiLabel(GameManager.qiAmount)
	
# Functions
func updateQiLabel(newValue: int) -> void:
	qiLabel.text = "Qi: %s" %newValue
	passiveLabel.text = "Passive Generation: %s" %passiveGen
