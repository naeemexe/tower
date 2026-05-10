extends CharacterBody2D

const SPEED = 130.0

func _physics_process(_delta: float) -> void:
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")

	var direction := Vector2(direction_x, direction_y).normalized()

	velocity = direction * SPEED

	move_and_slide()
