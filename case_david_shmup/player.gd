extends CharacterBody2D
@export var bullet_offset: float = 20.0
@export var bullet_resource: PackedScene
func _process(_delta: float) -> void:
	if Input.is_action_pressed("input_left"):
		self.position.x += -5;
	if Input.is_action_pressed("input_right"):
		self.position.x += 5;
	if Input.is_action_pressed("up"):
		self.position.y += -5;
	if Input.is_action_pressed("down"):
		self.position.y += 5;
	if Input.is_action_pressed("shoot"):
		shoot_bullet()

func shoot_bullet() -> void:
	if bullet_resource:
		var bullets = bullet_resource.instantiate()
		var direction = Vector2.UP
		bullets.global_position = global_position + direction + bullet_offset
		get_tree().root.add_child(bullets)
