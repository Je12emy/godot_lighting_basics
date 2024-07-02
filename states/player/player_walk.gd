extends State

class_name Player_Walk

@export var player : Player
@export var animated_sprite : AnimatedSprite2D

func Enter():
	if player.direction == Vector2.DOWN:
		animated_sprite.play("walk_down")
	if player.direction == Vector2.UP:
		animated_sprite.play("walk_up")
	if player.direction == Vector2.LEFT:
		animated_sprite.play("walk_left")
	if player.direction == Vector2.RIGHT:
		animated_sprite.play("walk_right")
	
func Physics_Update(_delta: float):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	player.velocity = direction * player.speed
	player.move_and_slide()
	
func Update(_delta: float):
	if Input.is_action_just_pressed("ui_right"):
		player.direction = Vector2.RIGHT
		animated_sprite.play("walk_right")
		return
	if Input.is_action_just_pressed("ui_left"):
		player.direction = Vector2.LEFT
		animated_sprite.play("walk_left")
		return
	if Input.is_action_just_pressed("ui_down"):
		player.direction = Vector2.DOWN
		animated_sprite.play("walk_down")
		return
	if Input.is_action_just_pressed("ui_up"):
		player.direction = Vector2.UP
		animated_sprite.play("walk_up")	
		return
	if Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
		transition.emit(self, "idle")
