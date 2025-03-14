extends Node2D

@onready var anim = $CatPlayerCharacter
@export var speed: float = 500.0

func _process(delta: float) -> void:
	var direction := Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		direction.x += 1
		anim.play("CatPlayerCharacter_Jump_From_Run_Animation")
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
		anim.play("CatPlayerCharacter_Jump_From_Run_Animation")
	if Input.is_action_pressed("move_down"):
		direction.y += 1
		anim.play("CatPlayerCharacter_Jump_From_Run_Animation")
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
		anim.play("CatPlayerCharacter_Jump_From_Run_Animation")

	if direction != Vector2.ZERO:
		direction = direction.normalized()
	
	position += direction * speed * delta
