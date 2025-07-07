extends Area2D
func _physics_process(delta: float) -> void:
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.Rest()
		pass
	pass
