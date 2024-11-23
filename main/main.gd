extends Node

var synthesizer:Node
func _ready() -> void:
	synthesizer = $Synthesizer

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	elif Input.is_action_just_pressed("generate"):
		synthesizer._generate()
