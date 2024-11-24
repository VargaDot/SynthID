extends Node

@export var synth_blueprint:PackedScene
var synth:Node
var cabinet:Array[Synth]

func _generate() -> void:
	synth = synth_blueprint.instantiate()
	
	synth.is_male = choose_yes_or_no()
	synth.glasses = choose_yes_or_no()
	if synth.is_male: synth.facial_hair = choose_yes_or_no()
	synth.has_long_hair = choose_yes_or_no()
	
	synth.voice_id = randi_range(0,99)
	synth.eyes = randi_range(0,5)
	synth.build = randi_range(0,2)
	synth.hair_color = randi_range(0,8)
	synth.height = randi_range(150,200) # this technically allocates a bigger portion of RAM
	synth.shoe_size = randi_range(35,48)
	synth.blood_type = randi_range(0,7)
	synth.hand_writing = randi_range(0,49)
	
	cabinet.append(synth)
	_interpret_info()

func choose_yes_or_no() -> bool:
	var x = randi_range(0,1)
	return x

func _interpret_info() -> void:
	print("---------------------------")
	if synth.is_male:
		print("Male")
		if synth.facial_hair:
			print("Has facial hair")
	else:
		print("Female")
	if synth.glasses:
		print("Has Glasses")
	
	print("Voice ID: " + str(synth.voice_id))
	
	var eye_color:String
	match synth.eyes:
		0: eye_color = "Blue"
		1: eye_color = "Brown"
		2: eye_color = "Green"
		3: eye_color = "Gray"
		4: eye_color = "Hazel"
		5: eye_color = "Amber"
		_: eye_color = "Undefined"
	print("Eye color: " + eye_color)
	
	if synth.has_long_hair:
		print ("Long hair")
	else:
		print("Short hair")
	
	var hair_color:String
	match synth.hair_color:
		0: hair_color = "Blonde"
		1: hair_color = "Dark Blonde"
		2: hair_color = "Medium Brown"
		3: hair_color = "Dark Brown"
		4: hair_color = "Black"
		5: hair_color = "Reddish Brown"
		6: hair_color = "Red"
		7: hair_color = "Gray"
		8: hair_color = "White"
		_: hair_color = "Undefined"
	print("Hair Color: " + hair_color)
	
	print("Height: " + str(synth.height))
	print("Shoe size: " + str(synth.shoe_size))
	
	var build:String
	match synth.build:
		0: build = "Thin"
		1: build = "Average"
		2: build = "Big"
		_: build = "Undefined"
	print("Build: " + build)
	
	var blood_type:String
	match synth.blood_type:
		0: blood_type = "O+"
		1: blood_type = "O-"
		2: blood_type = "A+"
		3: blood_type = "A-"
		4: blood_type = "B+"
		5: blood_type = "B-"
		6: blood_type = "AB+"
		7: blood_type = "AB-"
		_: blood_type = "Undefined"
	print("Blood type: " + blood_type)
	
	print("Handwriting: " + str(synth.hand_writing))
	print ("Profile Complete")
