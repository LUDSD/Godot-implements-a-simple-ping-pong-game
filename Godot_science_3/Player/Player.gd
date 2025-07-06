extends Area2D
class_name Player
var Input_Up:String = ""
var Input_Down:String = ""
@export var x = 5
var ini_position: Vector2

func _physics_process(delta: float) -> void:
	var Up = Input.get_action_strength(Input_Up)*10
	var Down = Input.get_action_strength(Input_Down)*10
	if position.y>=16&&position.y<=630:
		self.position.y -= Up
		self.position.y += Down
	else:
		position = ini_position
		pass

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Ball"):
		area.ini_speed.x = x
		get_node("AudioStreamPlayer2D").play()
	pass # Replace with function body.
