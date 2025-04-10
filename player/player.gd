extends CharacterBody2D

@export var max_speed: float = 400.0

@export var acceleration: float = 600.0
@export var deceleration: float = 1200.0


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	if direction != Vector2.ZERO:
		velocity = velocity.move_toward(direction * max_speed, acceleration * delta)
	else:
		velocity = velocity.move_toward(direction * max_speed, deceleration * delta)
	move_and_slide()
