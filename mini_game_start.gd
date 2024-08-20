extends Area2D

@export var miniGame = "gym"

var s = false
func _on_body_entered(body):
	if body is trainer:
		#make button thing appear
		$w.visible = true
		
		s = true
		

func _input(event):
	if Input.is_action_just_pressed('w') && s == true:
		print("minigame")
		get_tree().change_scene_to_file("res://" + miniGame + ".tscn")
		

func _on_body_exited(body):
	s = false
	
	#make button disapear? 
	$w.visible = false
