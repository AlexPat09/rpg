extends CharacterBody2D
const SPEED = 50

func _physics_process(delta):
	var directionX = Input.get_axis("left", "right")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directionY = Input.get_axis("up", "down")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	if velocity.y > 0:
		$AnimatedSprite2D.play("walk_front")
	if velocity.y == 0 and velocity.x == 0:
		$AnimatedSprite2D.play("idle")
	move_and_slide()
	
