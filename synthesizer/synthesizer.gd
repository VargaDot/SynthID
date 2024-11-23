extends Node

@export var synth_blueprint:PackedScene
var synth:Node

func _generate() -> void:
	synth = synth_blueprint.instantiate()
	
	synth.is_male = choose_yes_or_no()
	synth.glasses = choose_yes_or_no()
	if synth.is_male: synth.facial_hair = choose_yes_or_no()

	synth.voice_id = randi_range(0,99)
	synth.eyes = randi_range(0,5)
	synth.build = randi_range(0,2)
	synth.height = randi_range(150,200) # this technically allocates a bigger portion of RAM
	synth.shoe_size = randi_range(0,10)
	synth.blood_type = randi_range(0,7)
	synth.hand_writing = randi_range(0,49)
	
	_interpret_info()

func _interpret_info():
	if synth.is_male:
		print("Male")
		if synth.facial_hair: print("Has facial hair")
	else: print("Female")
	if synth.glasses: print("Has Glasses")
	
	print("Voice ID: " + str(synth.voice_id))
	
	var eye_color:String
	match synth.eyes:
		0: eye_color = "Blue"
		1: eye_color = "Brown"
		2: eye_color = "Green"
		3: eye_color = "Gray"
		4: eye_color = "Hazel"
		5: eye_color = "Amber"
	print("Eye color: " + eye_color)
	
	print("Height: " + str(synth.height))
	print("Shoe size: " + str(synth.shoe_size))
	
	var blood_type:String
	match synth.blood_type:
		0: "O+"
		1: "O-"
		2: "A+"
		3: "A-"
		4: "B+"
		5: "B-"
		6: "AB+"
		7: "AB-"
	
	print("Handwriting: " + str(synth.hand_writing))
	print ("Profile Complete")

func choose_yes_or_no() -> bool:
	var x = randi_range(0,1)
	return x
