extends Area2D

var ini_speed: Vector2 = Vector2(5,5)
var ini_position
func _ready() -> void:
	self.add_to_group("Ball")
	ini_position = position

func _physics_process(delta: float) -> void:
	position = position + ini_speed

func Rest():
	if position.x >512:
		Scoring.player_1_score += 1
	else:
		Scoring.player_2_score += 1
	position = ini_position
