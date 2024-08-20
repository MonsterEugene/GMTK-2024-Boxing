extends CharacterBody2D


var speed = 200 

func _physics_process(delta): 
	move_and_collide(Vector2(0, speed * delta))
	
	
