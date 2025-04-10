extends CharacterBody2D

@export var max_speed: float = 400.0

@export var acceleration: float = 600.0
@export var deceleration: float = 1200.0


func _physics_process(delta: float) -> void:
	move(delta)
	look_at_mouse(delta)


func move(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	if direction != Vector2.ZERO:
		velocity = velocity.move_toward(direction * max_speed, acceleration * delta)
	else:
		velocity = velocity.move_toward(direction * max_speed, deceleration * delta)

	move_and_slide()


func look_at_mouse(delta):
	var mouse_position = get_global_mouse_position()
	look_at(mouse_position)
