extends CharacterBody2D

var speed = 250

func _process(delta: float) -> void:
	
	#Aqui fica para mover o player
	var move = Input.get_vector("Back", "Forward", "Up", "Down")
	position += move.normalized() * delta * speed
	
	#Aqui fica para atacar
	var attack = Input.is_action_pressed("Attack")
	
	#Aqui fica para se defender
	var defense = Input.is_action_pressed("Shield")
