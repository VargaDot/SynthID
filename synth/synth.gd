extends Node

class_name Synth

var fingerprint:int
var is_male:bool
var voice_id:int
var synth_name:String
var dob:Time
var age:int
var build:int
var height:int
var eyes:int
var glasses:bool
var facial_hair:bool
var shoe_size:int
var blood_type:int
var hand_writing:int

func _ready() -> void:
	is_male = choose_yes_or_no()
	glasses = choose_yes_or_no()
	if is_male: facial_hair = choose_yes_or_no()
	
	voice_id = randi_range(0,99)
	eyes = randi_range(0,5)
	build = randi_range(0,2)
	height = randi_range(150,200) # this technically allocates a bigger portion of RAM
	shoe_size = randi_range(0,10)
	blood_type = randi_range(0,7)
	hand_writing = randi_range(0,49)

func choose_yes_or_no() -> bool:
	var x = randi_range(0,1)
	return x
