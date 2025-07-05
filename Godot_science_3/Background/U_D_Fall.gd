extends Area2D
@export var y = 5
func _physics_process(delta: float) -> void:
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.ini_speed.y = y
