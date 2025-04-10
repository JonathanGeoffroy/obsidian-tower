extends Node2D

@onready var original_mouse_mode = Input.mouse_mode


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN


func _physics_process(delta: float) -> void:
	position = get_global_mouse_position()


func _exit_tree() -> void:
	Input.mouse_mode = original_mouse_mode
