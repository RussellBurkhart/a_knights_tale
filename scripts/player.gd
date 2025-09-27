extends CharacterBody2D

const MAX_SPEED := 600.0
const ACCEL := 2000.0
const FRICTION := 2600.0
const ANIM_SPEED_THRESHOLD := 5.0

func _physics_process(delta: float) -> void:
	var input_dir := Input.get_vector("move_left","move_right","move_up","move_down")
	if input_dir != Vector2.ZERO:
		var target := input_dir.normalized() * MAX_SPEED
		velocity = velocity.move_toward(target, ACCEL * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	move_and_slide()

	if velocity.length() > ANIM_SPEED_THRESHOLD:
		%HappyBoo.play_walk_animation()
	else:
		%HappyBoo.play_idle_animation()
