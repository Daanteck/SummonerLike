extends CharacterBody2D

@export var speed: float = 160.0

func _physics_process(delta):
	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()

	if input_vector != Vector2.ZERO:
		print("Input detectado: ", input_vector)  # debug

	velocity = input_vector * speed
	move_and_slide()
