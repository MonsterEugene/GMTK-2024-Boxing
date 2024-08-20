extends Node2D
var spawnerPos = null 
var apple = preload("res://appleGod.png")

func _ready() -> void:
	randomize() 
	spawnerPos = $spawner.get_children() 
	

func spawn_apple(): 
	var index = randi() % spawnerPos.size() 
	
	var apple  = apple.instance()
	
	apple.global_position = spawnerPos[index].global.position() 
	add_child(apple)
	
	

func _on_Timer_timeout(): 
	spawn_apple()  
	
	
