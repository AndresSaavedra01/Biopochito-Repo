extends Node
class_name  MovementComponent
@export var character : CharacterBody3D
@export var visual_node: Node3D
@export var max_velocity := 20.0
@export var acceleration := 10.0
@export var deceleration := 20.0
@export var gravity := 9.8
@export var jump_force := 15.0
@export var rotation_speed := 12.0
var is_moving := false


func move_in_direction(vector: Vector2, delta: float) -> void:
	if !character: return
	
	var direction := vector.normalized()
	
	is_moving = direction != Vector2.ZERO
	
	if is_moving:
		character.velocity.x = move_toward(character.velocity.x, direction.x * max_velocity, acceleration * delta)
		character.velocity.z = move_toward(character.velocity.z, direction.y * max_velocity, acceleration * delta)
		rotate_visual_node(direction, delta)
	else:
		character.velocity.x = move_toward(character.velocity.x, 0.0, deceleration * delta)
		character.velocity.z = move_toward(character.velocity.z, 0.0, deceleration * delta)
	

func apply_gravity(delta: float) -> void:
	if character and not character.is_on_floor():
		character.velocity.y -= gravity * delta
	elif character and character.velocity.y < 0:
		character.velocity.y = 0.0

func jump() -> void:
	if character and character.is_on_floor():
		character.velocity.y = jump_force

func rotate_visual_node(diretion: Vector2, delta: float) -> void:
	var target_angle := atan2(-diretion.x, -diretion.y)
	visual_node.rotation.y = lerp_angle(visual_node.rotation.y, target_angle, rotation_speed * delta)
