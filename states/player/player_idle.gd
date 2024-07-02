extends State

class_name Player_Idle

@export var player : Player
@export var animated_sprite : AnimatedSprite2D

func Enter():
	if player.direction == Vector2.DOWN:
		animated_sprite.play("idle_down")
	if player.direction == Vector2.UP:
		animated_sprite.play("idle_up")
	if player.direction == Vector2.LEFT:
		animated_sprite.play("idle_left")
	if player.direction == Vector2.RIGHT:
		animated_sprite.play("idle_right")
	
func Update(_delta: float):
	if Input.is_action_just_pressed("ui_right"):
		player.direction = Vector2.RIGHT
		transition.emit(self, "walk")
		return
	if Input.is_action_just_pressed("ui_left"):
		player.direction = Vector2.LEFT
		transition.emit(self, "walk")
		return
	if Input.is_action_just_pressed("ui_down"):
		player.direction = Vector2.DOWN
		transition.emit(self, "walk")
		return
	if Input.is_action_just_pressed("ui_up"):
		player.direction = Vector2.UP
		transition.emit(self, "walk")
		return
