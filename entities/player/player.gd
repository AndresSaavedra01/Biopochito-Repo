extends CharacterBody3D
class_name Player

@export var move_component : MovementComponent
@export var input_component : InputHandlerComponent

func _physics_process(delta: float) -> void:
	move_component.apply_gravity(delta)
	move_component.move_in_direction(input_component.get_movement_vector(), delta)
	move_and_slide()
	$body/RayCast3D.target_position = -$body.global_transform.basis.z


func _on_input_handler_component_jump_pressed() -> void:
	move_component.jump()
