extends CharacterBody2D

const MAX_SPEED := 600.0
const ACCEL := 2000.0
const FRICTION := 2600.0
const ANIM_SPEED_THRESHOLD := 5.0

const DASH_SPEED := 1200.0
const DASH_TIME := 0.12
const DASH_COOLDOWN := 0.45

var dash_time_left := 0.0
var dash_cooldown_left := 0.0
var last_dir := Vector2.RIGHT

func _physics_process(delta: float) -> void:
	var input_dir := Input.get_vector("move_left","move_right","move_up","move_down")
	if input_dir != Vector2.ZERO:
		last_dir = input_dir.normalized()

	if dash_cooldown_left > 0.0:
		dash_cooldown_left -= delta

	if dash_time_left > 0.0:
		dash_time_left -= delta
		velocity = last_dir * DASH_SPEED
	else:
		if Input.is_action_just_pressed("dash") and dash_cooldown_left <= 0.0 and last_dir != Vector2.ZERO:
			dash_time_left = DASH_TIME
			dash_cooldown_left = DASH_COOLDOWN
			velocity = last_dir * DASH_SPEED
		else:
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
