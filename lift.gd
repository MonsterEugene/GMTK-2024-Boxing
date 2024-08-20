extends Node2D

var score =0
var downness = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$score.text = "Score: 0"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	$bar.value -= 1
	
	if Input.is_action_just_pressed("ui_left"):
		$bar.value += 14
	
	if ($bar.value < 60 and $bar.value > 50) and Input.is_action_just_pressed("ui_right") and !$AnimationPlayer.is_playing():
		$AnimationPlayer.play("squat down")
		$bar.value = 0
		score +=1
		$score.text = "Score: " + str(score)
	
	
	
	if Input.is_action_just_pressed("space"):
		Data.add_strength(score)
		get_tree().change_scene_to_file("res://gym.tscn")
		
