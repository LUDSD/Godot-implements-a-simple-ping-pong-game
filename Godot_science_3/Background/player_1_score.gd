extends Label
func _physics_process(delta: float) -> void:
	text = String.num_int64(Scoring.player_1_score)
