extends Control

# Exports
@onready var qiLabel: Label = $"Stats/Total Qi"
@onready var passiveLabel: Label = $Stats/Passive

# Variables
var passiveGeneration: int = 0

# Events
func _on_button_pressed() -> void:
	GameManager.incrementQi()
	updateQiLabel(GameManager.qiAmount)

func _ready() -> void:
	updateQiLabel(GameManager.qiAmount)
	passiveLabel.text = "Passive Generation: %s" %passiveGeneration

# Functions
func updateQiLabel(newValue: int) -> void:
	qiLabel.text = "Qi: %s" %newValue
