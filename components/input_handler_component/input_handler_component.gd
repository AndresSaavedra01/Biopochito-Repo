extends Node
class_name InputHandlerComponent

@export var is_enable := true
signal jump_pressed

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		jump_pressed.emit()


func get_movement_vector() -> Vector2:
	var input := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
#	if not camera_controller or not input_with_camera:
#		return input
#		
#	var forward: Vector3 = camera_controller.get_forward_direction()
#	var right: Vector3 = camera_controller.get_right_direction()

#	var direction: Vector3 = forward * -input.y + right * input.x
#	direction.y = 0.0
#	direction = direction.normalized()

	return Vector2(input.x, input.y)
