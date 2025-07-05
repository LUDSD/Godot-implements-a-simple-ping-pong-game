extends Area2D
@export var x = 5
var ini_position: Vector2
func _ready() -> void:
	ini_position = position

func _physics_process(delta: float) -> void:
	
	var Up = Input.get_action_strength("Player_1_Up")*10
	var Down = Input.get_action_strength("Player_1_Down")*10
	
	if position.y>16&&position.y<630:
		self.position.y -= Up
		self.position.y += Down
	else:
		position = ini_position
		
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.ini_speed.x = x
